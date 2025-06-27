============================
TÊN ỨNG DỤNG   : vegetablesapp - Ứng dụng di động nhận dạng các loại rau củ ở Việt Nam 
NGƯỜI THỰC HIỆN: 51800631 - LƯU HUY THÔNG
		 51800438 - NGUYỄN TRẦN QUANG THỊNH
GVHD	       : Ths.Dung Cẩm Quang
============================

1. GIỚI THIỆU

“vegetablesapp” cho phép người dùng chụp ảnh hoặc chọn ảnh từ thư viện, sau đó dùng mô hình AI để nhận diện nhanh các loại rau củ phổ biến tại Việt Nam (cà chua, bí đỏ,…)
Ứng dụng hỗ trợ cả người tiêu dùng phân loại sản phẩm, giảm sai sót và tiết kiệm thời gian.

------------------

2. YÊU CẦU BAN ĐẦU

• Flutter SDK ≥ 3.29.2  
• Dart SDK  
• Android Studio hoặc VS Code (cài plugin Flutter & Dart)  
• Android SDK (compileSdkVersion = 33, minSdkVersion ≥ 23)  
• Xcode (cho iOS, iOS 12+)  
• JDK 17  
• Kết nối Internet

-------------------------------------

3. CẤU HÌNH, CÀI ĐẶT VÀ CHẠY ỨNG DỤNG

Đặt `google-services.json` vào `android/app/`

Bước 1. Tải về và cài đặt các gói  
    flutter pub get

Bước 2. Khởi động ứng dụng trên thiết bị thật hoặc giả lập  
    flutter run

--------------------------

4. CẤU TRÚC THƯ MỤC DỰ ÁN

source_code/
├─ .dart_tool/                          
├─ .git/                                
├─ .idea/                               # Cấu hình IDE IntelliJ/Android Studio (ignore)
├─ android/                             # Mã nguồn Android (Gradle, Firebase)
├─ ios/                                 # Mã nguồn iOS (Xcode project)
├─ assets/                              
├─ build/                               # Output build
├─ lib/                                 # Mã nguồn Dart/Flutter
│   ├─ core/                            
│   │   ├─ utils/                       
│   │   │   ├─ image_constant.dart      
│   │   │   ├─ navigator_service.dart   
│   │   │   ├─ pref_utils.dart          
│   │   │   ├─ size_utils.dart          
│   │   │   └─ vegetable_db_api_service.dart  # API cho rau củ
│   │   └─ app_export.dart              
│   ├─ presentation/                    # Module giao diện người dùng (gồm models, widgets, màn hình chính và các màn hình khác)
│   │   ├─ models/                      # Định nghĩa các models
│   │   ├─ vegetable_home_screen/       # Màn hình chính
│   │   │   └─ vegetable_home_screen.dart  # UI + logic cho màn hình chính
│   │   ├─ widgets/                     # Widget tái sử dụng (buttons, cards…)
│   │   └─ ...  			# Các màn hình khác
│   ├─ routes/                          # Điều hướng
│   │   ├─ app_routes.dart              
│   │   └─ auth_wrapper.dart            
│   ├─ theme/                           
│   └─ widgets/                         
│       ├─ custom_image_view.dart       
│       └─ main.dart                    # Entry point của ứng dụng
├─ test/                                
├─ web/                                 
├─ .flutter-plugins-dependencies        # Thông tin plugin Flutter
├─ .gitignore
├─ devtools_options.yaml
├─ pubspec.lock
├─ pubspec.yaml                         
├─ README.md                            # Tài liệu Markdown
└─ readme.txt                           # Tài liệu plain-text

-----------------------

5. CÁC LỆNH THƯỜNG DÙNG

flutter doctor – Kiểm tra môi trường Flutter
flutter pub get – Cài dependencies
flutter run – Chạy app trên thiết bị/giả lập
flutter analyze – Phân tích mã nguồn tìm lỗi 
flutter clean – Xoá cache build

-------------

6. DEPLOYMENT

Build the application for production:

```bash
# For Android
flutter build apk --release

# For iOS
flutter build ios --release

----------

7. LIÊN HỆ

Email: lthong098@gmail.com
