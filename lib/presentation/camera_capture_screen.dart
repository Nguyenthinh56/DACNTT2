import 'dart:io';
import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'vegetable_classifier_screen.dart';

class CameraCaptureScreen extends StatefulWidget {
  const CameraCaptureScreen({super.key});

  static Widget builder(BuildContext context) {
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
      // Lấy danh sách camera có sẵn
      _cameras = await availableCameras();
      if (_cameras != null && _cameras!.isNotEmpty) {
        // Chọn camera đầu tiên và đặt độ phân giải medium
        _cameraController = CameraController(_cameras![0], ResolutionPreset.medium);
        // Khởi tạo controller
        await _cameraController!.initialize();
        // Cập nhật UI sau khi khởi tạo thành công
        if (mounted) {
          setState(() {});
        }
      } else {
        debugPrint('Không tìm thấy camera nào.');
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Không tìm thấy camera nào khả dụng.')),
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

  // Hàm chọn ảnh từ thư viện
  Future<void> _pickImage() async {
    // Tránh xử lý nếu đang trong quá trình chọn/chụp ảnh
    if (_isPickingOrTaking) return;

    setState(() => _isPickingOrTaking = true);

    // Yêu cầu quyền truy cập thư viện ảnh
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
    // Chọn ảnh từ gallery
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      // Xử lý ảnh đã chọn
      await _processImage(pickedFile);
    } else {
      // Đặt lại cờ nếu không chọn ảnh nào
      setState(() => _isPickingOrTaking = false);
    }
  }

  // Hàm chụp ảnh từ CameraPreview
  Future<void> _captureFromPreview() async {
    // Kiểm tra controller camera đã sẵn sàng chưa
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      debugPrint('Camera controller chưa sẵn sàng.');
      return;
    }
    // Tránh xử lý nếu đang trong quá trình chọn/chụp ảnh
    if (_isPickingOrTaking) return;

    setState(() => _isPickingOrTaking = true);

    try {
      // Chụp ảnh
      final file = await _cameraController!.takePicture();
      final xfile = XFile(file.path);
      // Xử lý ảnh vừa chụp
      await _processImage(xfile);
    } catch (e) {
      debugPrint('Lỗi khi chụp ảnh: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi khi chụp ảnh: ${e.toString()}')),
        );
      }
    } finally {
      // Đặt lại cờ sau khi hoàn thành (dù thành công hay thất bại)
      setState(() => _isPickingOrTaking = false);
    }
  }

  // Hàm xử lý ảnh (đọc, chuyển đổi sang Uint8List) - Đã bỏ resize
  Future<void> _processImage(XFile imageFile) async {
    try {
      // Đọc dữ liệu byte từ file ảnh
      final bytes = await File(imageFile.path).readAsBytes();

      // Kiểm tra xem bytes có rỗng không
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

      // Sử dụng trực tiếp bytes gốc để truyền đi, không resize
      final originalBytes = Uint8List.fromList(bytes);


      if (originalBytes.isEmpty) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Dữ liệu ảnh gốc trống.')),
          );
        }
        return;
      }

      // Điều hướng đến màn hình phân loại rau củ với dữ liệu ảnh gốc
      // Sử dụng pushReplacement để thay thế màn hình chụp ảnh bằng màn hình phân loại
      if (mounted) {
        Navigator.pushReplacement( // <-- Đã thay đổi từ push sang pushReplacement
          context,
          MaterialPageRoute(
            builder: (context) => VegetableClassifierScreen(imageBytes: originalBytes), // Truyền bytes gốc
          ),
        );
      }
    } catch (e) {
      debugPrint('Lỗi xử lý ảnh: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi xử lý ảnh: ${e.toString()}')),
        );
      }
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
    // Giải phóng controller camera khi widget bị hủy
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Hiển thị loading nếu camera chưa sẵn sàng
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      body: Stack(
        children: [
          // Đảm bảo CameraPreview chiếm toàn bộ màn hình
          Positioned.fill(
            child: CameraPreview(_cameraController!),
          ),
          // Nút quay lại (Back)
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          // Container chứa cả hai nút ở dưới cùng
          Positioned(
            bottom: 40, // Khoảng cách từ đáy
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Căn giữa các nút theo chiều ngang
              children: [
                // Nút chụp ảnh
                FloatingActionButton(
                  onPressed: _isPickingOrTaking ? null : _captureFromPreview, // Vô hiệu hóa khi đang xử lý
                  backgroundColor: Colors.white,
                  child: _isPickingOrTaking
                      ? const CircularProgressIndicator(color: Colors.black) // Hiển thị loading khi đang xử lý
                      : const Icon(Icons.camera_alt, color: Colors.black),
                ),
                SizedBox(width: 40), // Khoảng cách giữa hai nút
                // Nút chọn ảnh từ thư viện
                FloatingActionButton( // Sử dụng FloatingActionButton cho cả hai nút để nhất quán
                  onPressed: _isPickingOrTaking ? null : _pickImage, // Vô hiệu hóa khi đang xử lý
                  backgroundColor: Colors.white,
                  child: _isPickingOrTaking
                      ? const CircularProgressIndicator(color: Colors.black) // Hiển thị loading khi đang xử lý
                      : const Icon(Icons.photo_library, color: Colors.black), // Đổi màu icon thành đen cho phù hợp với nền trắng
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
