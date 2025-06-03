from utils.db import db
from datetime import datetime

class Vegetable(db.Model): # Lớp đại diện cho bảng vegetables
    __tablename__ = 'vegetables'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    class_index = db.Column(db.Integer, unique=True, nullable=False)  # Chỉ mục của mô hình nhận diện
    vietnamese_name = db.Column(db.String(255), nullable=False)
    scientific_name = db.Column(db.String(255), nullable=True)
    description = db.Column(db.Text, nullable=True)
    nutritional_info = db.Column(db.Text, nullable=True)  # Thông tin dinh dưỡng chung
    image_url = db.Column(db.String(255), nullable=True)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    # Quan hệ với bảng vegetable_nutritional_points
    nutritional_points = db.relationship("VegetableNutritionalPoints", backref="vegetable", lazy=True, cascade="all, delete-orphan")
    
    # Quan hệ với bảng vegetable_preserve_points
    preserve_points = db.relationship("VegetablePreservePoints", backref="vegetable", lazy=True, cascade="all, delete-orphan")
    
    # Quan hệ với bảng vegetable_select_points
    select_points = db.relationship("VegetableSelectPoints", backref="vegetable", lazy=True, cascade="all, delete-orphan")
    
    def to_dict(self):
        """Chuyển đổi dữ liệu rau củ thành dictionary để sử dụng trong API."""
        return {
            "id": self.id,
            "class_index": self.class_index,
            "vietnamese_name": self.vietnamese_name,
            "scientific_name": self.scientific_name,
            "description": self.description,
            "nutritional_info": self.nutritional_info,
            "image_url": self.image_url,
            "created_at": self.created_at.strftime('%Y-%m-%d %H:%M:%S'),
            "updated_at": self.updated_at.strftime('%Y-%m-%d %H:%M:%S'),
            "nutritional_points": [point.to_dict() for point in self.nutritional_points],
            "preserve_points": [point.to_dict() for point in self.preserve_points],
            "select_points": [point.to_dict() for point in self.select_points],
            "recipes": [{"id": recipe.id, "name": recipe.name, "image_url":recipe.image_url} for recipe in self.recipes] if hasattr(self, "recipes") else []
        }
