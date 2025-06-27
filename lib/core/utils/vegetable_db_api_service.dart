import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;

// Import các model từ file vegetable_db_model.dart
import '../../presentation/models/meal_details_model.dart';
import '../../presentation/models/meal_suggestion_model.dart';
import '../../presentation/models/vegetable_details_model.dart';
import '/presentation/models/vegetable_db_model.dart';

// Lớp dịch vụ để gọi các API liên quan đến database rau củ backend
class VegetableDbApiService {
  static const String _baseUrl = 'https://dacntt2-production.up.railway.app/api';
  // ENDPOINT LẤY TẤT CẢ VỀ GIÁ TRỊ GỐC CỦA RAU CỦ '/vegetables/'
  static const String _allVegetablesEndpoint = '/vegetables/'; // <-- Endpoint lấy tất cả rau củ

  // Endpoint để lấy danh sách rau củ ngẫu nhiên
  static const String _randomVegetablesEndpoint = '/vegetables/random'; // <-- Endpoint lấy rau củ ngẫu nhiên

  // Endpoint để tìm kiếm rau củ theo từ khóa
  static const String _searchVegetablesEndpoint = '/vegetables/search'; // <-- Endpoint tìm kiếm

  // Endpoint để lấy danh sách món ăn ngẫu nhiên
  static const String _randomMealsEndpoint = '/recipes/random'; // <-- Endpoint lấy món ăn ngẫu nhiên


  // Phương thức lấy danh sách rau củ ngẫu nhiên
  Future<List<VegetableBasicInfo>> fetchRandomVegetables() async {
    debugPrint('fetchRandomVegetables: Bắt đầu.');
    try {
      // Xây dựng URL đầy đủ cho endpoint lấy rau củ ngẫu nhiên
      final url = Uri.parse('$_baseUrl$_randomVegetablesEndpoint');
      debugPrint('fetchRandomVegetables: Gọi API GET: $url');

      // Sử dụng package:http để thực hiện GET request
      // TĂNG THỜI GIAN TIMEOUT LÊN 30 GIÂY (có thể điều chỉnh tùy theo độ lớn dữ liệu và tốc độ mạng)
      final response = await http.get(url).timeout(const Duration(seconds: 30));
      debugPrint('fetchRandomVegetables: Mã trạng thái phản hồi: ${response.statusCode}');


      // Kiểm tra mã trạng thái HTTP
      if (response.statusCode == 200) {
        // Phản hồi là một chuỗi JSON.
        final decodedBody = jsonDecode(utf8.decode(response.bodyBytes)); // Decode JSON
        debugPrint('fetchRandomVegetables: Đã giải mã JSON.');

        // KIỂM TRA KIỂU DỮ LIỆU NHẬN ĐƯỢC: PHẢI LÀ MỘT LIST
        if (decodedBody is List) {
          List<dynamic> jsonList = decodedBody;
          debugPrint('fetchRandomVegetables: JSON là một List với ${jsonList.length} phần tử.');

          // Chuyển đổi List<dynamic> thành List<VegetableBasicInfo>
          List<VegetableBasicInfo> vegetables = jsonList.map((item) {
            try {
              // Đảm bảo item là Map<String, dynamic> trước khi truy cập
              if (item is Map<String, dynamic>) {
                // Xử lý an toàn khi đọc các trường từ item
                final int? id = item['id'] is int ? item['id'] as int : null;
                final String? vietnameseName = item['vietnamese_name'] is String ? item['vietnamese_name'] as String : null;
                final String? imageUrl = item['image_url'] is String ? item['image_url'] as String : null;

                // Chỉ tạo VegetableBasicInfo nếu có đủ dữ liệu cần thiết (ít nhất là id và tên)
                if (id != null && vietnameseName != null) {
                  debugPrint('fetchRandomVegetables: Parse item (id: $id, image_url: $imageUrl), vietnamese_name: $vietnameseName) thành công.');
                  return VegetableBasicInfo(
                    id: id,
                    imageUrl: imageUrl, // imageUrl có thể là null
                    vietnameseName: vietnameseName,
                  );
                } else {
                  debugPrint('fetchRandomVegetables: Bỏ qua item không hợp lệ: $item');
                  // Trả về một đối tượng với dữ liệu không hợp lệ hoặc ném lỗi tùy logic ứng dụng
                  return VegetableBasicInfo(id: -1, vietnameseName: 'Dữ liệu không hợp lệ');
                }

              } else {
                debugPrint('fetchRandomVegetables: Bỏ qua item không phải Map: $item');
                // Trả về một đối tượng với dữ liệu không hợp lệ nếu format không đúng
                return VegetableBasicInfo(id: -1, vietnameseName: 'Dữ liệu không hợp lệ'); // Hoặc xử lý lỗi khác
              }

            } catch (e, stackTrace) {
              debugPrint('fetchRandomVegetables: Lỗi parse item: $item');
              debugPrint('fetchRandomVegetables: Stack trace item parse: $stackTrace');
              // Tùy chọn: ném lại lỗi hoặc trả về null/đối tượng lỗi
              // rethrow; // Ném lại lỗi để bắt ở tầng trên (Bloc)
              // Nếu không ném lại, item lỗi sẽ bị bỏ qua hoặc thay bằng đối tượng lỗi
              return VegetableBasicInfo(id: -1, vietnameseName: 'Lỗi xử lý dữ liệu');
            }
          }).toList();

          // Lọc bỏ các item lỗi (nếu bạn chọn trả về đối tượng lỗi với id = -1)
          vegetables.removeWhere((veg) => veg.id == -1);
          debugPrint('fetchRandomVegetables: Đã parse thành công ${vegetables.length} item.');

          // Giữ logic lấy 4 item đầu tiên để phù hợp với màn hình home hiện tại
          List<VegetableBasicInfo> randomList = vegetables.take(4).toList();
          debugPrint('fetchRandomVegetables: Trả về ${randomList.length} item ngẫu nhiên.');
          return randomList;

        } else {
          // Nếu kiểu dữ liệu không phải là List, ném lỗi
          debugPrint('fetchRandomVegetables: Invalid API response format: Expected JSON List. Received: ${decodedBody.runtimeType}');
          throw Exception('Invalid API response format: Expected JSON List.');
        }

      } else {
        // Xử lý lỗi HTTP
        debugPrint('fetchRandomVegetables: Failed to load random vegetable info: ${response.statusCode}');
        throw Exception('Failed to load random vegetable info: ${response.statusCode}');
      }
    } catch (e, stackTrace) {
      // Bắt các lỗi (mạng, phân tích JSON sai định dạng, lỗi parse item, timeout, lỗi kiểu dữ liệu)
      debugPrint('fetchRandomVegetables: Failed to fetch random vegetable info: $e');
      debugPrint('fetchRandomVegetables: Stack trace chung: $stackTrace');
      throw Exception('Failed to fetch random vegetable info: $e');
    } finally {
      debugPrint('fetchRandomVegetables: Phương thức kết thúc.');
    }
  }

  // Phương thức lấy danh sách tất cả rau củ cơ bản (từ endpoint /api/vegetables/ hoặc tương tự)
  // Phương thức này có thể được sử dụng cho màn hình danh sách đầy đủ hoặc tìm kiếm ban đầu
  Future<List<VegetableBasicInfo>> fetchAllVegetableBasicInfo() async {
    debugPrint('fetchAllVegetableBasicInfo: Bắt đầu.');
    try {
      // Xây dựng URL đầy đủ cho endpoint lấy tất cả rau củ
      final url = Uri.parse('$_baseUrl$_allVegetablesEndpoint');
      debugPrint('fetchAllVegetableBasicInfo: Gọi API GET: $url');

      // Sử dụng package:http để thực hiện GET request
      // TĂNG THỜI GIAN TIMEOUT LÊN 30 GIÂY (có thể điều chỉnh tùy theo độ lớn dữ liệu và tốc độ mạng)
      final response = await http.get(url).timeout(const Duration(seconds: 30));
      debugPrint('fetchAllVegetableBasicInfo: Mã trạng thái phản hồi: ${response.statusCode}');


      // Kiểm tra mã trạng thái HTTP
      if (response.statusCode == 200) {
        // Phản hồi là một chuỗi JSON.
        final decodedBody = jsonDecode(utf8.decode(response.bodyBytes)); // Decode JSON
        debugPrint('fetchAllVegetableBasicInfo: Đã giải mã JSON.');

        // KIỂM TRA KIỂU DỮ LIỆU NHẬN ĐƯỢC: PHẢI LÀ MỘT LIST
        if (decodedBody is List) {
          List<dynamic> jsonList = decodedBody;
          debugPrint('fetchAllVegetableBasicInfo: JSON là một List với ${jsonList.length} phần tử.');

          // Chuyển đổi List<dynamic> thành List<VegetableBasicInfo>
          List<VegetableBasicInfo> vegetables = jsonList.map((item) {
            try {
              // Đảm bảo item là Map<String, dynamic> trước khi truy cập
              if (item is Map<String, dynamic>) {
                // Xử lý an toàn khi đọc các trường từ item
                final int? id = item['class_index'] is int ? item['class_index'] as int : null;
                final String? vietnameseName = item['vietnamese_name'] is String ? item['vietnamese_name'] as String : null;
                final String? imageUrl = item['image_url'] is String ? item['image_url'] as String : null;

                // Chỉ tạo VegetableBasicInfo nếu có đủ dữ liệu cần thiết (ít nhất là id và tên)
                if (id != null && vietnameseName != null) {
                  debugPrint('fetchAllVegetableBasicInfo: Parse item (id: $id, image_url: $imageUrl, vietnamese_name: $vietnameseName) thành công.');
                  return VegetableBasicInfo(
                    id: id,
                    vietnameseName: vietnameseName,
                    imageUrl: imageUrl, // imageUrl có thể là null
                  );
                } else {
                  debugPrint('fetchAllVegetableBasicInfo: Bỏ qua item không hợp lệ: $item');
                  return VegetableBasicInfo(id: -1, vietnameseName: 'Dữ liệu không hợp lệ');
                }
              } else {
                debugPrint('fetchAllVegetableBasicInfo: Bỏ qua item không phải Map: $item');
                return VegetableBasicInfo(id: -1, vietnameseName: 'Dữ liệu không hợp lệ');
              }
            } catch (e, stackTrace) {
              debugPrint('fetchAllVegetableBasicInfo: Lỗi parse item: $item');
              debugPrint('fetchAllVegetableBasicInfo: Stack trace item parse: $stackTrace');
              // rethrow; // Tùy chọn: ném lại lỗi
              return VegetableBasicInfo(id: -1, vietnameseName: 'Lỗi xử lý dữ liệu');
            }
          }).toList();

          // Lọc bỏ các item lỗi (nếu bạn chọn trả về đối tượng lỗi với id = -1)
          vegetables.removeWhere((veg) => veg.id == -1);
          debugPrint('fetchAllVegetableBasicInfo: Đã parse thành công ${vegetables.length} item.');

          return vegetables;
        } else {
          // Nếu kiểu dữ liệu không phải là List, ném lỗi
          debugPrint('fetchAllVegetableBasicInfo: Invalid API response format: Expected JSON List. Received: ${decodedBody.runtimeType}');
          throw Exception('Invalid API response format: Expected JSON List.');
        }

      } else {
        // Xử lý lỗi HTTP
        debugPrint('fetchAllVegetableBasicInfo: Failed to fetch all vegetable info: ${response.statusCode}');
        throw Exception('Failed to fetch all vegetable info: ${response.statusCode}');
      }
    } catch (e, stackTrace) {
      // Bắt các lỗi khác (mạng, timeout, v.v.)
      debugPrint('fetchAllVegetableBasicInfo: Error fetching all vegetables: $e');
      debugPrint('fetchAllVegetableBasicInfo: Stack trace chung: $stackTrace');
      throw Exception('Error fetching all vegetables: $e');
    } finally {
      debugPrint('fetchAllVegetableBasicInfo: Phương thức kết thúc.');
    }
  }


  // Phương thức lấy thông tin chi tiết về một loại rau củ theo ID (từ endpoint /api/vegetables/{id})
  // Phương thức này được gọi bởi VegetableInfoScreen để lấy thông tin chi tiết.
  Future<VegetableDetails> fetchVegetableDetailedInfo(int id) async {
    debugPrint('fetchVegetableDetailedInfo: Bắt đầu cho ID: $id');
    try {
      // Xây dựng URL đầy đủ cho endpoint lấy thông tin chi tiết theo ID
      // Dựa trên ảnh bạn cung cấp, endpoint có dạng /api/vegetables/{id}
      final url = Uri.parse('$_baseUrl/vegetables/$id');
      debugPrint('fetchVegetableDetailedInfo: Gọi API GET: $url');

      // Sử dụng package:http để thực hiện GET request
      // Đặt timeout cho request
      final response = await http.get(url).timeout(const Duration(seconds: 10));
      debugPrint('fetchVegetableDetails: Mã trạng thái phản hồi: ${response.statusCode}');


      if (response.statusCode == 200) {
        // Phản hồi là một chuỗi JSON chứa thông tin chi tiết của một loại rau củ.
        // Giải mã chuỗi JSON.
        final decodedBody = jsonDecode(utf8.decode(response.bodyBytes)); // Decode JSON
        debugPrint('fetchVegetableDetailedInfo: Đã giải mã JSON.');

        // KIỂM TRA KIỂU DỮ LIỆU NHẬN ĐƯỢC: PHẢI LÀ MỘT MAP
        if (decodedBody is Map<String, dynamic>) {
          Map<String, dynamic> jsonResponse = decodedBody;
          debugPrint('fetchVegetableDetailedInfo: JSON là một Map.');

          // Chuyển đổi Map<String, dynamic> thành VegetableDetailedInfo
          try {
            // Đảm bảo các trường trong JSON response khớp với các trường trong model và được parse đúng kiểu dữ liệu.
            VegetableDetails detailedInfo = VegetableDetails.fromJson(jsonResponse);
            debugPrint('fetchVegetableDetailedInfo: Parse thành công.');
            return detailedInfo;
          } catch (e, stackTrace) {
            // Lỗi xảy ra trong quá trình mapping JSON sang model
            debugPrint('fetchVegetableDetailedInfo: Lỗi parse JSON sang model: $e');
            debugPrint('fetchVegetableDetailedInfo: Stack trace parse: $stackTrace');
            // Ném lại lỗi để bắt ở tầng trên (VegetableInfoScreen)
            rethrow;
          }
        } else {
          // Nếu kiểu dữ liệu không phải là Map, ném lỗi
          debugPrint('fetchVegetableDetailedInfo: Invalid API response format: Expected JSON Map. Received: ${decodedBody.runtimeType}');
          throw Exception('Invalid API response format: Expected JSON Map.');
        }

      } else {
        // Xử lý lỗi HTTP (ví dụ: 404 Not Found nếu ID không tồn tại)
        debugPrint('fetchVegetableDetailedInfo: Failed to load vegetable detailed info for ID $id: ${response.statusCode}');
        throw Exception('Failed to load vegetable detailed info for ID $id: ${response.statusCode}');
      }
    } catch (e, stackTrace) {
      // Bắt các lỗi khác (mạng, timeout, v.v.)
      debugPrint('fetchVegetableDetailedInfo: Failed to fetch vegetable detailed info for ID $id: $e');
      debugPrint('fetchVegetableDetailedInfo: Stack trace chung: $stackTrace');
      throw Exception('Failed to fetch vegetable detailed info for ID $id: $e');
    } finally {
      debugPrint('fetchVegetableDetailedInfo: Phương thức kết thúc.');
    }
  }


  // Phương thức gửi ảnh để dự đoán loại rau củ và trả về thông tin đầy đủ của rau củ
  // Gửi ảnh dưới dạng multipart đến API dự đoán và trả về thông tin đầy đủ của rau củ
  Future<VegetableDetails> predictVegetable(Uint8List imageBytes) async {
    debugPrint('predictVegetable: Bắt đầu.');

    try {
      // Xây dựng URL cho endpoint dự đoán
      final url = Uri.parse('$_baseUrl/predict/');
      debugPrint('predictVegetable: Gọi API POST: $url');

      // Sử dụng MultipartRequest để gửi file ảnh với key "image"
      var request = http.MultipartRequest("POST", url);

      // Thêm file ảnh vào request. Lưu ý: field name phải là "image" theo như bạn kiểm tra ở server.
      request.files.add(http.MultipartFile.fromBytes(
        'image', // Field name, bắt buộc phải trùng với yêu cầu của backend.
        imageBytes,
        filename: 'upload.jpg', // Bạn có thể thay đổi tên file nếu cần.
        contentType: MediaType('image', 'jpeg'), // Điều chỉnh theo loại ảnh bạn sử dụng.
      ));

      // Gửi request và nhận response dạng stream
      var streamedResponse = await request.send().timeout(const Duration(seconds: 10));
      var response = await http.Response.fromStream(streamedResponse);

      debugPrint('predictVegetable: Mã trạng thái phản hồi: ${response.statusCode}');

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        debugPrint('predictVegetable: Successfully decoded JSON.');

        if (jsonResponse.containsKey('predicted_class') &&
            jsonResponse['predicted_class'] is Map<String, dynamic>) {
          final vegetableJson = jsonResponse['predicted_class'] as Map<String, dynamic>;
          final vegetableDetails = VegetableDetails.fromJson(vegetableJson);
          debugPrint('predictVegetable: Prediction successful, vegetable: ${vegetableDetails.vietnameseName}');
          return vegetableDetails;
        } else {
          debugPrint('predictVegetable: Invalid prediction response format: Missing or incorrect "predicted_class"');
          throw Exception('Invalid prediction response format: Missing or incorrect "predicted_class"');
        }
      } else {
        debugPrint('predictVegetable: Failed to predict vegetable: ${response.statusCode}');
        throw Exception('Failed to predict vegetable: ${response.statusCode}');
      }
    } catch (e, stackTrace) {
      debugPrint('predictVegetable: Error caught: $e');
      debugPrint('predictVegetable: Stack trace: $stackTrace');
      throw Exception('Error sending image for prediction: $e');
    } finally {
      debugPrint('predictVegetable: Method finished.');
    }
  }

  // Tìm kiếm rau củ dựa theo vietnamese name
  Future<List<VegetableBasicInfo>> searchVegetables(String query) async {
    debugPrint('searchVegetables: Bắt đầu với query: $query');

    // Xây dựng URL cho endpoint tìm kiếm
    final url = Uri.parse('$_baseUrl$_searchVegetablesEndpoint');
    debugPrint('searchVegetables: Gọi API POST: $url');

    try {
      // Tạo body JSON chứa tham số truy vấn mà API cần, với key "keyword" theo như test Postman của bạn.
      final body = jsonEncode({'keyword': query});

      // Gọi POST request với headers chỉ định rằng đây là JSON.
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: body,
      ).timeout(const Duration(seconds: 15));

      debugPrint('searchVegetables: Mã trạng thái phản hồi: ${response.statusCode}');

      if (response.statusCode == 200) {
        // Giải mã JSON với UTF-8.
        final decodedBody = jsonDecode(utf8.decode(response.bodyBytes));
        debugPrint('searchVegetables: Đã giải mã JSON.');

        if (decodedBody is List) {
          debugPrint('searchVegetables: JSON là một List với ${decodedBody.length} phần tử.');

          // Chuyển đổi List<dynamic> thành List<VegetableBasicInfo>
          final vegetables = decodedBody.map<VegetableBasicInfo>((item) {
            // Giả định rằng mỗi item là Map<String, dynamic>
            final int id = item['id'] as int;
            final String vietnameseName = item['vietnamese_name'] as String;
            final String? imageUrl = item['image_url'] as String?;

            debugPrint('searchVegetables: Parse item (id: $id, image_url: $imageUrl) thành công.');

            return VegetableBasicInfo(
              id: id,
              vietnameseName: vietnameseName,
              imageUrl: imageUrl,
            );
          }).toList();

          debugPrint('searchVegetables: Đã parse thành công ${vegetables.length} item.');
          return vegetables;
        } else {
          debugPrint('searchVegetables: Invalid API response format: Expected JSON List. Received: ${decodedBody.runtimeType}');
          throw Exception('Invalid API response format: Expected JSON List.');
        }
      } else {
        debugPrint('searchVegetables: Failed to search vegetables: ${response.statusCode}');
        throw Exception('Failed to search vegetables: ${response.statusCode}');
      }
    } catch (e, stackTrace) {
      debugPrint('searchVegetables: Error searching vegetables: $e');
      debugPrint('searchVegetables: Stack trace chung: $stackTrace');
      throw Exception('Error searching vegetables: $e');
    } finally {
      debugPrint('searchVegetables: Phương thức kết thúc.');
    }
  }

  // Phương thức để lấy danh sách 4 món ăn ngẫu nhiên
  Future<List<MealSuggestionModel>> fetchRandomMeals() async {
    final String url = "$_baseUrl$_randomMealsEndpoint";
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        // Vì API trả về trực tiếp list các món ăn
        final List<dynamic> jsonData = json.decode(response.body);
        // Map từ JSON thành đối tượng Meal
        List<MealSuggestionModel> meals = jsonData
            .map((jsonEntry) => MealSuggestionModel.fromJson(jsonEntry))
            .toList();
        return meals;
      } else {
        throw Exception("Lỗi khi lấy danh sách món ăn ngẫu nhiên: ${response.statusCode}");
      }
    } catch (error) {
      throw Exception("Lỗi khi gọi API: $error");
    }
  }


  // Phương thức để lấy thông tin chi tiết món ăn theo ID
  Future<MealDetails> fetchMealDetailedInfo(int mealId) async {
    final String url = "$_baseUrl/recipes/$mealId";
    try {
      debugPrint('Fetching meal details from: $url');
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        debugPrint('Meal details API response: $jsonData');
        return MealDetails.fromJson(jsonData);
      } else {
        debugPrint('fetchMealDetailedInfo: Failed to fetch meal details: ${response.statusCode}');
        throw Exception('Failed to fetch meal details: ${response.statusCode}');
      }
    } catch (e, stackTrace) {
      debugPrint('fetchMealDetailedInfo: Error fetching meal details: $e');
      debugPrint('fetchMealDetailedInfo: Stack trace: $stackTrace');
      throw Exception('Error fetching meal details: $e');
    }
  }
}
