import logging
from logging.handlers import RotatingFileHandler
from flask import request, jsonify
import os

def init_logger(app):
    if not os.path.exists('logs'):
        os.mkdir('logs')
    if not app.debug:
        # Tạo RotatingFileHandler: lưu log vào file logs/app.log,
        # với kích thước tối đa là 10KB và giữ lại tối đa 10 file log cũ.
        # Nếu file log đã tồn tại, nó sẽ tự động xoá các file cũ hơn.
        # Nếu không có file log nào, nó sẽ tạo mới một file log.
        file_handler = RotatingFileHandler('logs/app.log', maxBytes=10240, backupCount=10)
        file_handler.setLevel(logging.INFO)
        formatter = logging.Formatter(
            '%(asctime)s %(levelname)s: %(message)s [in %(pathname)s:%(lineno)d]'
        )
        file_handler.setFormatter(formatter)
        app.logger.addHandler(file_handler)
    else:
        # Nếu ứng dụng đang ở chế độ debug, ta có thể cấu hình mức log thấp hơn.
        app.logger.setLevel(logging.DEBUG)

def init_error_handlers(app):

    @app.errorhandler(404)
    def not_found_error(error):
        app.logger.error(f"404 - Không tìm thấy tài nguyên: {request.path}")
        return jsonify({"error": "Resource not found"}), 404

    @app.errorhandler(500)
    def internal_error(error):
        # Log lỗi chi tiết
        app.logger.error("500 - Lỗi nội bộ: " + str(error))
        return jsonify({"error": "Internal server error"}), 500

def init_util(app):
    init_logger(app)
    init_error_handlers(app)
