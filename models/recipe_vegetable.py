from utils.db import db

class RecipeVegetable(db.Model): # Lớp đại diện cho bảng recipe_vegetables
    __tablename__ = 'recipe_vegetables'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    recipe_id = db.Column(db.Integer, db.ForeignKey('recipes.id', ondelete='CASCADE'), nullable=False)
    vegetable_id = db.Column(db.Integer, db.ForeignKey('vegetables.id', ondelete='CASCADE'), nullable=False)

    __table_args__ = (
        db.UniqueConstraint('recipe_id', 'vegetable_id', name='unique_recipe_vegetable'),
    )

    def to_dict(self):
        return {
            "id": self.id,
            "recipe_id": self.recipe_id,
            "vegetable_id": self.vegetable_id
        }
