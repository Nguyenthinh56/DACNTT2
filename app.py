import os
from flask import Flask
from config import Config
from routes import init_routes
from utils import init_util
from utils.db import init_db
def create_app():

    app = Flask(__name__)
    
    # 1. Cấu hình ứng dụng, dùng file config.py với class Config.
    app.config.from_object(Config)
    
    # 2. Khởi tạo cơ sở dữ liệu, import instance db từ db.py.
    init_db(app)
    
    # 3. Đăng ký các route thông qua file routes/__init__.py.
    init_routes(app)
    
    # 4. Thiết lập các tiện ích (logging, error handler, etc.)
    init_util(app)
    
    return app
app = create_app()

if __name__ == '__main__':
    # Optional: Chọn host và port theo biến môi trường hoặc mặc định.
    host = os.getenv('FLASK_RUN_HOST', '0.0.0.0')
    port = int(os.getenv('FLASK_RUN_PORT', 5000))
    
    app.run(host=host, port=port, debug=True)
