from flask import Blueprint, jsonify, request, current_app
from models.recipe import Recipe

recipes_bp = Blueprint('recipes', __name__)

@recipes_bp.route('/', methods=['GET']) # Lấy danh sách tất cả công thức
def get_all_recipes():
    try:
        recipes = Recipe.query.all()
        recipes_list = [recipe.to_dict() for recipe in recipes]
        return jsonify({"recipes": recipes_list}), 200
    except Exception as e:
        current_app.logger.error("Lỗi khi truy xuất danh sách công thức: " + str(e))
        return jsonify({"error": str(e)}), 500


@recipes_bp.route('/<int:recipe_id>', methods=['GET']) # Lấy thông tin chi tiết công thức
def get_recipe_detail(recipe_id):
    try:
        recipe = Recipe.query.get(recipe_id)
        if recipe:
            return jsonify(recipe.to_dict()), 200
        else:
            return jsonify({"error": f"Không tìm thấy công thức với id {recipe_id}"}), 404
    except Exception as e:
        current_app.logger.error("Lỗi khi lấy thông tin công thức: " + str(e))
        return jsonify({"error": str(e)}), 500


@recipes_bp.route('/by-vegetable/<int:vegetable_id>', methods=['GET']) # Lấy danh sách công thức theo id rau
def get_recipes_by_vegetable(vegetable_id):
    try:
        # Sử dụng any() để kiểm tra mối quan hệ qua thuộc tính vegetables của Recipe
        recipes = Recipe.query.filter(Recipe.vegetables.any(id=vegetable_id)).all()
        if recipes:
            recipes_list = [recipe.to_dict() for recipe in recipes]
            return jsonify({"recipes": recipes_list}), 200
        else:
            return jsonify({"error": f"Không tìm thấy công thức nào sử dụng rau với id {vegetable_id}"}), 404
    except Exception as e:
        current_app.logger.error("Lỗi khi lấy công thức theo rau: " + str(e))
        return jsonify({"error": str(e)}), 500

