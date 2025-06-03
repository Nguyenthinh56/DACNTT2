# routes/__init__.py

def init_routes(app):
    """
    Hàm này đăng ký toàn bộ các blueprint của ứng dụng vào đối tượng Flask app.
    Mỗi blueprint được gắn một url_prefix tương ứng.
    """
    from .vegetables import vegetables_bp # Import blueprint cho rau củ
    from .recipes import recipes_bp # Import blueprint cho công thức
    from .predict import predict_bp # Import blueprint cho dự đoán

    # Đăng ký các blueprint với url_prefix tương ứng để phân luồng endpoint
    app.register_blueprint(vegetables_bp, url_prefix='/api/vegetables') # Lấy danh sách rau củ
    app.register_blueprint(recipes_bp, url_prefix='/api/recipes') # Lấy danh sách công thức
    app.register_blueprint(predict_bp, url_prefix='/api/predict') # Dự đoán rau củ từ ảnh
