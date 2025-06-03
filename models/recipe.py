from utils.db import db
from datetime import datetime

class Recipe(db.Model): # Lớp đại diện cho bảng recipes
    __tablename__ = 'recipes'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(255), nullable=False)
    description = db.Column(db.Text, nullable=True)
    image_url = db.Column(db.String(255), nullable=True)
    prep_time = db.Column(db.String(50), nullable=True)
    cook_time = db.Column(db.String(50), nullable=True)
    servings = db.Column(db.String(50), nullable=True)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    # Quan hệ 1-nhiều với RecipeItem (nguyên liệu) và RecipeStep (các bước thực hiện)
    items = db.relationship('RecipeItem', backref='recipe', lazy=True, cascade="all, delete-orphan")
    steps = db.relationship('RecipeStep', backref='recipe', lazy=True, cascade="all, delete-orphan")

    # Quan hệ nhiều-nhiều với Vegetable qua bảng liên kết recipe_vegetables
    vegetables = db.relationship('Vegetable', secondary='recipe_vegetables', backref=db.backref('recipes', lazy=True))

    def to_dict(self):
        """Chuyển đổi dữ liệu Recipe thành dictionary để sử dụng trong API."""
        return {
            "id": self.id,
            "name": self.name,
            "description": self.description,
            "image_url": self.image_url,
            "prep_time": self.prep_time,
            "cook_time": self.cook_time,
            "servings": self.servings,
            "created_at": self.created_at.strftime('%Y-%m-%d %H:%M:%S') if self.created_at else None,
            "updated_at": self.updated_at.strftime('%Y-%m-%d %H:%M:%S') if self.updated_at else None,
            "items": [item.to_dict() for item in self.items] if self.items else [],
            "steps": [step.to_dict() for step in self.steps] if self.steps else [],
        }
