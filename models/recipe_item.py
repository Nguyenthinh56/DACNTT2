from utils.db import db

class RecipeItem(db.Model): # Lớp đại diện cho bảng recipe_items
    __tablename__ = 'recipe_items'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    recipe_id = db.Column(db.Integer, db.ForeignKey('recipes.id', ondelete="CASCADE"), nullable=False) # ID của công thức liên quan
    item_name = db.Column(db.String(255), nullable=False) # Tên nguyên liệu
    quantity = db.Column(db.String(255), nullable=True)  # Số lượng và đơn vị của nguyên liệu
    notes = db.Column(db.String(255), nullable=True)     # Ghi chú (ví dụ: "(băm nhỏ)")
    image_url = db.Column(db.String(255), nullable=True)   # URL ảnh minh họa (nếu có)
    order_index = db.Column(db.Integer, nullable=False)    # Thứ tự xuất hiện của nguyên liệu

    def to_dict(self):
        """Chuyển đổi đối tượng RecipeItem thành dictionary để trả về API."""
        return {
            "id": self.id, # Thêm trường id vào dict
            "recipe_id": self.recipe_id, # ID của công thức liên quan
            "item_name": self.item_name,# Tên nguyên liệu
            "quantity": self.quantity,# Số lượng và đơn vị của nguyên liệu
            "notes": self.notes,# Ghi chú (ví dụ: "(băm nhỏ)")`
            "image_url": self.image_url, # URL ảnh minh họa (nếu có)
            "order_index": self.order_index # Thứ tự xuất hiện của nguyên liệu
        }
