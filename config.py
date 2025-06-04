from dotenv import load_dotenv
import os

# Load biến môi trường từ file .env
load_dotenv()

class Config():
    DEBUG = os.getenv("DEBUG", "False").lower() == "True"
    SECRET_KEY = os.getenv("SECRET_KEY","default-secret-key")
    SQLALCHEMY_DATABASE_URI = os.getenv("DATABASE_URI","sqlite:///default.db")
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    
