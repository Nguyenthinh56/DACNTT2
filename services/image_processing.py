import io
import os
import numpy as np
from PIL import Image
import tensorflow as tf
from keras.applications.efficientnet import preprocess_input

# Cấu hình kích thước ảnh giống như khi huấn luyện (EfficientNet thường dùng 224x224 cho EfficientNetB0)
IMG_SIZE = (224, 224)

# Biến toàn cục lưu mô hình (để tránh tải lại nhiều lần)
model = None

def load_model(model_path=None): # Tải mô hình từ file
    global model
    if model_path is None:
        # Lấy thư mục của file hiện hành
        current_dir = os.path.dirname(os.path.abspath(__file__))
        # Giả sử mô hình được lưu trong thư mục "model" nằm cùng cấp với thư mục chứa file này.
        # Ví dụ: nếu cấu trúc là: backend/model/best_model.keras
        model_path = os.path.join(current_dir, '..', 'DL_model', 'best_model.keras')
    
    if model is None:
        if not os.path.exists(model_path):
            raise FileNotFoundError(f"Không tìm thấy file mô hình tại: {model_path}")
        print("Đang tải mô hình từ", model_path)
        model = tf.keras.models.load_model(model_path)
    return model

def process_user_image(image_data, target_size=IMG_SIZE): # Hàm này xử lý ảnh đầu vào để đưa vào mô hình
    # Mở ảnh dựa trên kiểu dữ liệu đầu vào
    if isinstance(image_data, bytes):
        image = Image.open(io.BytesIO(image_data))
    elif isinstance(image_data, str):
        image = Image.open(image_data)
    else:
        image = Image.open(image_data)
    
    # Đảm bảo ảnh ở chế độ RGB
    if image.mode != "RGB":
        image = image.convert("RGB")
    
    # Thay đổi kích thước ảnh theo target_size
    image = image.resize(target_size)
    
    # Chuyển đổi ảnh thành mảng NumPy
    image_array = np.array(image)
    
    # Áp dụng preprocess_input của EfficientNet để chuẩn hóa ảnh
    image_preprocessed = preprocess_input(image_array)
    
    # Thêm chiều batch: kết quả sau khi chuyển đổi có shape (1, height, width, channels)
    image_tensor = np.expand_dims(image_preprocessed, axis=0)
    return image_tensor

def process_image_with_model(image_data, target_size=IMG_SIZE): # Hàm này xử lý ảnh và dự đoán lớp rau củ
    # Tiền xử lý ảnh theo definition của EfficientNet
    image_tensor = process_user_image(image_data, target_size)
    
    # Tải mô hình nếu cần
    loaded_model = load_model()
    
    # Sử dụng mô hình để dự đoán
    raw_predictions = loaded_model.predict(image_tensor)
    
    # Lấy chỉ mục lớp có xác suất cao nhất
    predicted_class = int(np.argmax(raw_predictions, axis=1)[0])
    
    return predicted_class
