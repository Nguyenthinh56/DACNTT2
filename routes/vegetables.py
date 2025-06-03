from flask import Blueprint, jsonify, current_app, request
from models.vegetable import Vegetable
from sqlalchemy import func

vegetables_bp = Blueprint('vegetables', __name__)

@vegetables_bp.route('/', methods=['GET']) # Lấy danh sách tất cả rau củ
def get_all_vegetables():
    try:
        vegetables = Vegetable.query.all()
        vegetables_list = [veg.to_dict() for veg in vegetables]
        return jsonify({"vegetables": vegetables_list}), 200
    except Exception as e:
        current_app.logger.error("Lỗi khi truy xuất rau củ: " + str(e))
        return jsonify({"error": str(e)}), 500


@vegetables_bp.route('/<int:vegetable_id>', methods=['GET']) # Lấy thông tin chi tiết rau củ
def get_vegetable_detail(vegetable_id):
    try:
        vegetable = Vegetable.query.get(vegetable_id)
        if vegetable:
            return jsonify(vegetable.to_dict()), 200
        else:
            return jsonify({"error": "Không tìm thấy rau củ với id này"}), 404
    except Exception as e:
        current_app.logger.error("Lỗi khi lấy thông tin rau củ: " + str(e))
        return jsonify({"error": str(e)}), 500


@vegetables_bp.route('/from-class/<int:class_index>', methods=['GET']) # Lấy thông tin rau củ theo class_index
def get_vegetable_by_class_index(class_index):
    try:
        vegetable = Vegetable.query.filter_by(class_index=class_index).first()
        if vegetable:
            return jsonify(vegetable.to_dict()), 200
        else:
            return jsonify({"error": f"Không tìm thấy rau củ với class_index {class_index}"}), 404
    except Exception as e:
        current_app.logger.error("Lỗi khi lấy rau củ theo class_index: " + str(e))
        return jsonify({"error": str(e)}), 500


@vegetables_bp.route('/search', methods=['POST']) # Lấy thông tin rau củ theo keyword
def search_vegetables():
    # Lấy từ khóa tìm kiếm từ tham số 'keyword'
    keyword = request.json.get('keyword', '')
    
    if not keyword:
        return jsonify({"error": "Bạn chưa cung cấp từ khóa tìm kiếm"}), 400

    search_pattern = f"%{keyword}%"

    results = Vegetable.query.filter(Vegetable.vietnamese_name.ilike(search_pattern)).all()
    
    # Chuyển kết quả thành một danh sách các dictionary
    suggestions = [
        {
            "id": vegetable.id,
            "vietnamese_name": vegetable.vietnamese_name,
            "image_url": vegetable.image_url
        }
        for vegetable in results
    ]
    
    return jsonify(suggestions), 200


@vegetables_bp.route('/random', methods=['GET']) # Lấy ngẫu nhiên danh sách 4 ảnh rau củ
def get_random_vegetables():
    random_veg = Vegetable.query.with_entities(
        Vegetable.id, 
        Vegetable.image_url,
        Vegetable.vietnamese_name
    ).order_by(func.random()).limit(4).all()
    
    # Chuyển đổi kết quả (list of tuple) thành list of dictionary
    result = [{"id": vegetable.id, "image_url": vegetable.image_url, "vietnamese_name": vegetable.vietnamese_name} for vegetable in random_veg]

    return jsonify(result), 200