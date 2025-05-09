from flask import Blueprint, jsonify, current_app
from models.vegetable import Vegetable

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

