from utils.db import db

class RecipeStep(db.Model): # Lớp đại diện cho bảng recipe_steps
    __tablename__ = 'recipe_steps'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    recipe_id = db.Column(db.Integer, db.ForeignKey('recipes.id', ondelete='CASCADE'), nullable=False)
    step_number = db.Column(db.Integer, nullable=False)  # Thứ tự của bước chế biến
    step_name = db.Column(db.String(255), nullable=True)
    instruction_text = db.Column(db.Text, nullable=False)  # Nội dung hướng dẫn cho bước đó
    image_url = db.Column(db.String(255), nullable=True)  # (Tùy chọn) URL ảnh minh họa cho bước

    def to_dict(self):
        """Chuyển đổi đối tượng RecipeStep thành dictionary để sử dụng trong API."""
        return {
            "id": self.id,
            "recipe_id": self.recipe_id,
            "step_number": self.step_number,
            "step_name": self.step_name,
            "instruction_text": self.instruction_text,
            "image_url": self.image_url
        }
