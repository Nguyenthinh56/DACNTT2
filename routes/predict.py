from flask import Blueprint, request, jsonify, current_app
from services.image_processing import process_image_with_model
from models.vegetable import Vegetable
predict_bp = Blueprint('predict', __name__)

@predict_bp.route('/', methods=['POST']) # Dự đoán rau củ từ ảnh
def predict():
    if 'image' not in request.files: # Kiểm tra xem có file ảnh được gửi lên không
        return jsonify({"error": "Không có file ảnh được gửi"}), 400 # Trả về lỗi nếu không có file ảnh

    file = request.files['image'] # Lấy file ảnh từ request

    try:
        predicted_class = process_image_with_model(file) # Gọi hàm xử lý ảnh để dự đoán class_index
        vegetable = Vegetable.query.filter_by(class_index=predicted_class).first() # Tìm rau củ trong cơ sở dữ liệu theo class_index
        if not vegetable:
            return jsonify({"error": "Không tìm thấy rau củ tương ứng với class_index"}), 404 # Trả về lỗi nếu không tìm thấy rau củ
        
        return jsonify({"predicted_class": vegetable.to_dict()}), 200 # Trả về thông tin rau củ dự đoán
    except Exception as e:
        current_app.logger.error("Đã xảy ra lỗi trong quá trình dự đoán: " + str(e))  # Ghi log lỗi
        return jsonify({"error": str(e)}), 500
