from utils.db import db

class VegetablePreservePoints(db.Model): # Lớp đại diện cho bảng vegetable_preserve_points
    __tablename__ = 'vegetable_preserve_points'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    vegetable_id = db.Column(db.Integer, db.ForeignKey('vegetables.id', ondelete='CASCADE'), nullable=False)
    point_text = db.Column(db.Text, nullable=False)
    display_order = db.Column(db.Integer, nullable=False)

    __table_args__ = (
        db.UniqueConstraint('vegetable_id', 'display_order', name='unique_preserve_order_per_veg'),
    )

    def to_dict(self):
        return {
            "id": self.id,
            "vegetable_id": self.vegetable_id,
            "point_text": self.point_text,
            "display_order": self.display_order
        }
