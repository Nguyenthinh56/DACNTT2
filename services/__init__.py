# __init__.py trong thư mục services để biến nó thành một package
# và cho phép import các module con từ bên ngoài.
# Import các chức năng hoặc lớp cần thiết từ các module con
from .image_processing import process_image_with_model
from .recommendation import recommend_recipes_by_vegetable

# Định nghĩa các đối tượng mà module này sẽ export ra ngoài
__all__ = [
    "process_image_with_model", # Dự đoán rau củ từ ảnh
    "recommend_recipes_by_vegetable" # Gợi ý công thức dựa trên rau củ
]
