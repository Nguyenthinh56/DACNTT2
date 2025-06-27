import 'dart:io';
import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../core/app_export.dart';

class CameraCaptureScreen extends StatefulWidget {
  // Thêm tham số onImageProcessed để truyền callback
  final Function(Uint8List)? onImageProcessed;

  const CameraCaptureScreen({super.key, this.onImageProcessed});

  static Widget builder(BuildContext context) {
    // Khi được gọi từ AppRoutes, onImageProcessed sẽ là null
    return const CameraCaptureScreen();
  }

  @override
  State<CameraCaptureScreen> createState() => _CameraCaptureScreenState();
}

class _CameraCaptureScreenState extends State<CameraCaptureScreen> {
  // Biến cờ để tránh xử lý nhiều lần khi đang chọn/chụp ảnh
  bool _isPickingOrTaking = false;
  // Danh sách các camera có sẵn
  List<CameraDescription>? _cameras;
  // Controller cho camera
  CameraController? _cameraController;

  @override
  void initState() {
    super.initState();
    // Khởi tạo camera khi widget được tạo
    _initCamera();
  }

  // Hàm khởi tạo camera
  Future<void> _initCamera() async {
    try {
      _cameras = await availableCameras();
      if (_cameras != null && _cameras!.isNotEmpty) {
        // Chọn camera sau nếu có, nếu không thì chọn camera đầu tiên
        CameraDescription? backCamera;
        for (final camera in _cameras!) {
          if (camera.lensDirection == CameraLensDirection.back) {
            backCamera = camera;
            break;
          }
        }
        final cameraToUse = backCamera ?? _cameras!.first;
        debugPrint(
            'Sử dụng camera: ${cameraToUse.lensDirection == CameraLensDirection.back ? "Sau" : "Trước"}');
        _cameraController =
            CameraController(cameraToUse, ResolutionPreset.medium);
        await _cameraController!.initialize();
        if (mounted) {
          setState(() {});
        }
      } else {
        debugPrint('Không tìm thấy camera nào.');
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text('Không tìm thấy camera nào khả dụng.')),
          );
        }
      }
    } catch (e) {
      debugPrint('Lỗi khởi tạo camera: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Không thể khởi tạo camera: ${e.toString()}')),
        );
      }
    }
  }

  // Hàm chuyển đổi camera
  Future<void> _switchCamera() async {
    if (_cameras == null || _cameras!.isEmpty || _cameraController == null) return;

    final currentIndex = _cameras!.indexWhere(
          (camera) => camera == _cameraController!.description,
    );
    if (currentIndex < 0) return;

    final newIndex = (currentIndex + 1) % _cameras!.length;
    final newCamera = _cameras![newIndex];

    try {
      await _cameraController!.dispose();
      _cameraController = CameraController(newCamera, ResolutionPreset.medium);
      await _cameraController!.initialize();
      setState(() {});
    } catch (e) {
      debugPrint('Lỗi chuyển camera: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Lỗi chuyển camera: ${e.toString()}')),
      );
    }
  }

  // Hàm chọn ảnh từ thư viện
  Future<void> _pickImage() async {
    if (_isPickingOrTaking) return;
    setState(() => _isPickingOrTaking = true);

    if (!await _requestPermission(Permission.photos)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Bạn cần cấp quyền truy cập thư viện.')),
        );
      }
      setState(() => _isPickingOrTaking = false);
      return;
    }

    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
    await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      await _processImage(pickedFile);
    } else {
      setState(() => _isPickingOrTaking = false);
    }
  }

  // Hàm chụp ảnh từ CameraPreview
  Future<void> _captureFromPreview() async {
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      debugPrint('Camera controller chưa sẵn sàng.');
      return;
    }
    if (_isPickingOrTaking) return;
    setState(() => _isPickingOrTaking = true);

    try {
      final file = await _cameraController!.takePicture();
      final xfile = XFile(file.path);
      await _processImage(xfile);
    } catch (e) {
      debugPrint('Lỗi khi chụp ảnh: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi khi chụp ảnh: ${e.toString()}')),
        );
      }
    } finally {
      setState(() => _isPickingOrTaking = false);
    }
  }

  // Hàm xử lý ảnh (đọc, chuyển sang Uint8List)
  Future<void> _processImage(XFile imageFile) async {
    try {
      final bytes = await File(imageFile.path).readAsBytes();
      if (bytes.isEmpty) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Không thể đọc dữ liệu ảnh.')),
          );
        }
        return;
      }

      final image = img.decodeImage(bytes);
      if (image == null) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Không thể decode ảnh.')),
          );
        }
        return;
      }

      final originalBytes = Uint8List.fromList(bytes);
      if (originalBytes.isEmpty) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Dữ liệu ảnh gốc trống.')),
          );
        }
        return;
      }

      // Điều hướng sau khi xử lý ảnh
      if (mounted) {
        if (widget.onImageProcessed != null) {
          widget.onImageProcessed!(originalBytes);
          Navigator.pop(context, originalBytes);
        } else {
          NavigatorService.pushReplacementNamed(
            AppRoutes.vegetableClassifierScreen,
            arguments: originalBytes,
          );
        }
      }
    } catch (e) {
      debugPrint('Lỗi xử lý ảnh: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi xử lý ảnh: ${e.toString()}')),
        );
      }
    } finally {
      setState(() => _isPickingOrTaking = false);
    }
  }

  // Hàm yêu cầu quyền
  Future<bool> _requestPermission(Permission permission) async {
    var status = await permission.status;
    if (!status.isGranted) {
      status = await permission.request();
    }
    return status.isGranted;
  }

  @override
  void dispose() {
    if (_cameraController != null) {
      _cameraController!.pausePreview();
      _cameraController!.dispose();
      _cameraController = null;
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return const Scaffold(
          body: Center(child: CircularProgressIndicator()));
    }

    // Lấy chiều rộng màn hình để căn giữa nút chụp ảnh
    final double screenWidth = MediaQuery.of(context).size.width;
    // Kích thước mặc định của FloatingActionButton
    const double fabSize = 56.0;

    return Scaffold(
      body: Stack(
        children: [
          // Hiển thị CameraPreview chiếm toàn bộ màn hình
          Positioned.fill(
            child: CameraPreview(_cameraController!),
          ),
          // Nút quay lại (Back) ở góc trên bên trái
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          // Nút xoay camera (Switch Camera) ở góc dưới bên trái - không có nền
          Positioned(
            bottom: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.switch_camera, color: Colors.white, size: 40),
              onPressed: _switchCamera,
            ),
          ),
          // Nút chụp ảnh (Capture) ở giữa phía dưới với nền xanh lá và icon màu trắng
          Positioned(
            bottom: 40,
            left: (screenWidth - fabSize) / 2,
            child: FloatingActionButton(
              onPressed: _isPickingOrTaking ? null : _captureFromPreview,
              backgroundColor: Colors.white,
              child: _isPickingOrTaking
                  ? const CircularProgressIndicator(color: Colors.green)
                  : const Icon(Icons.camera_alt, color: Colors.green),
            ),
          ),
          // Nút chọn ảnh từ thư viện (Pick Image) ở góc dưới bên phải - không có nền
          Positioned(
            bottom: 40,
            right: 16,
            child: IconButton(
              icon: const Icon(Icons.photo_library, color: Colors.white, size: 40),
              onPressed: _pickImage,
            ),
          ),
        ],
      ),
    );
  }
}
