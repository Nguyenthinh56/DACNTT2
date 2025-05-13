import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import '../../routes/app_routes.dart';
import 'camera_capture_screen.dart';
import 'vegetable_home_screen/widgets/bottom_navigation_bar_widget.dart';
import 'vegetable_home_screen/models/vegetable_details_model.dart';

class VegetableClassifierScreen extends StatefulWidget {
  final Uint8List? imageBytes;

  const VegetableClassifierScreen({super.key, this.imageBytes});

  @override
  VegetableClassifierScreenState createState() => VegetableClassifierScreenState();
}

class VegetableClassifierScreenState extends State<VegetableClassifierScreen> {
  img.Image? _image;
  String _classificationResult = "Kết quả phân loại sẽ hiển thị ở đây";
  String _imageInfo = "Thông tin ảnh: Kích thước, định dạng, v.v.";
  bool _isProcessingImage = false;
  // Index cho tab hiện tại (Quét ảnh là 1)
  int _selectedIndex = 1;

  // Thêm biến để lưu thông tin chi tiết về rau củ sau khi phân loại
  VegetableDetails? _identifiedVegetableDetails;

  @override
  void initState() {
    super.initState();
    if (widget.imageBytes != null) {
      try {
        final image = img.decodeImage(widget.imageBytes!);
        if (image != null) {
          _image = image;
          _imageInfo = _getImageInfo(_image!);
          _classificationResult = "Đang phân loại...";
          // Bắt đầu quá trình phân loại sau khi xử lý ảnh
          _classifyImage(); // <-- Gọi hàm phân loại ở đây
        } else {
          _imageInfo = "Không thể xử lý ảnh.";
        }
      } catch (e) {
        _imageInfo = "Lỗi khi xử lý ảnh.";
      }
    } else {
      _imageInfo = "Không có ảnh được chọn.";
    }
  }

  String _getImageInfo(img.Image image) {
    try {
      final width = image.width;
      final height = image.height;
      final fileSizeKB = (widget.imageBytes!.lengthInBytes / 1024).toStringAsFixed(2);
      return "Kích thước: ${width}x$height\nKích thước file: ${fileSizeKB} KB";
    } catch (_) {
      return "Không thể lấy thông tin ảnh.";
    }
  }

  Future<void> _classifyImage() async {
    setState(() {
      _classificationResult = "Đang phân loại...";
      _isProcessingImage = true; // Bắt đầu xử lý
    });

    // quá trình phân loại
    await Future.delayed(const Duration(seconds: 3)); // Giả lập thời gian phân loại

    // --- Kết quả phân loại giả lập ---
    // Sau khi phân loại thành công, sẽ có tên loại rau củ.
    // Sử dụng tên này để lấy thông tin chi tiết (từ API, database, hoặc dữ liệu mẫu).
    String classifiedName = "Rau cải"; // Giả sử phân loại được "Rau cải"

    // Lấy thông tin chi tiết (sử dụng dữ liệu mẫu cho ví dụ)
    _identifiedVegetableDetails = VegetableDetails.placeholder(classifiedName);
    // ---------------------------------

    setState(() {
      _classificationResult = "Phân loại thành công: $classifiedName";
      _isProcessingImage = false; // Kết thúc xử lý
    });
  }

  void _captureNewImage() {
    // Sử dụng pushReplacement để thay thế màn hình hiện tại bằng màn hình chụp ảnh mới
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const CameraCaptureScreen()),
    );
  }

  // Hàm điều hướng đến màn hình thông tin rau củ
  void _viewVegetableInfo() {
    // Chỉ điều hướng nếu đã phân loại và có thông tin chi tiết
    if (_identifiedVegetableDetails != null) {
      // Sử dụng pushNamed để điều hướng đến màn hình thông tin
      // Truyền dữ liệu chi tiết rau củ VÀ dữ liệu ảnh làm arguments dưới dạng Map
      Navigator.pushNamed(
        context,
        AppRoutes.vegetableInfoScreen,
        arguments: {
          'details': _identifiedVegetableDetails,
          'imageBytes': widget.imageBytes, // <-- Truyền dữ liệu ảnh gốc
        },
      );
    } else {
      // Hiển thị thông báo nếu chưa phân loại hoặc không có thông tin
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Vui lòng phân loại ảnh trước.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kết quả nhận diện'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Quay về trang chủ và xóa các route khác trên stack
            Navigator.of(context).popUntil(
              ModalRoute.withName(AppRoutes.vegetableHomeScreen),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _image == null
                    ? Container(
                  width: 250,
                  height: 250,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image, size: 120, color: Colors.grey),
                )
                    : ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.memory(
                    widget.imageBytes!,
                    height: 250,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 250,
                        height: 250,
                        color: Colors.red[100],
                        child: const Center(
                          child: Text(
                            'Không thể hiển thị ảnh',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  _imageInfo,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Text(
                  _classificationResult,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    // Nút Phân loại ảnh
                    _isProcessingImage
                        ? const CircularProgressIndicator() // Hiển thị loading khi đang xử lý
                        : ElevatedButton.icon(
                      onPressed: _image != null && !_isProcessingImage ? _classifyImage : null, // Vô hiệu hóa nếu không có ảnh hoặc đang xử lý
                      icon: const Icon(Icons.search),
                      label: const Text('Phân loại ảnh'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Nút Chụp lại ảnh mới
                    ElevatedButton(
                      onPressed: _isProcessingImage ? null : _captureNewImage, // Vô hiệu hóa khi đang xử lý
                      child: const Text('Chụp lại ảnh mới'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Nút Xem thông tin rau củ
                    ElevatedButton(
                      onPressed: _identifiedVegetableDetails != null && !_isProcessingImage ? _viewVegetableInfo : null, // Chỉ kích hoạt khi đã phân loại và không đang xử lý
                      child: const Text('Xem thông tin rau củ'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // Sử dụng BottomNavigationBarWidget và truyền index hiện tại (1 cho Scan)
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: _selectedIndex),
    );
  }
}
