from flask_sqlalchemy import SQLAlchemy

# Khởi tạo đối tượng SQLAlchemy, các model sẽ import từ đây
db = SQLAlchemy()

def init_db(app):
    db.init_app(app)
    
