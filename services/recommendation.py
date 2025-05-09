from models.vegetable import Vegetable

def recommend_recipes_by_vegetable(class_index):
    # Tra cứu rau củ dựa trên class_index trong bảng Vegetable
    vegetable = Vegetable.query.filter_by(class_index=class_index).first()
    
    if not vegetable:
        return []
    
    # Lấy danh sách các công thức thông qua thuộc tính backref 'recipes'
    recipes = vegetable.recipes
    return [recipe.to_dict() for recipe in recipes]

