import os
from dotenv import load_dotenv

base_dir = os.getcwd()
load_dotenv(os.path.join(base_dir, ".env"))
# print(f"{os.path.join(os.getcwd())}")
# print(f"{os.path.abspath(os.path.dirname(__file__))}")


class Config(object):
    SECRET_KEY = os.environ.get("SECRET_KEY")
    TESTING = os.environ.get("TESTING")
    # SQLAlchemy ORM
    SQLALCHEMY_DATABASE_URI = os.environ.get(
        "DATABASE_URL"
    ) or "sqlite:///" + os.path.join(base_dir, "app.sqlite")
    SQLALCHEMY_TRACK_MODIFICATIONS = os.environ.get("SQLALCHEMY_TRACK_MODIFICATIONS")

    # JInja Templating Engine
    EXPLAIN_TEMPLATE_LOADING = os.environ.get("EXPLAIN_TEMPLATE_LOADING")
    TEMPLATES_AUTO_RELOAD = os.environ.get("TEMPLATES_AUTO_RELOAD")

    # Flask-Mail Extension
    MAIL_SERVER = os.environ.get("MAIL_SERVER") or "localhost"
    MAIL_PORT = int(os.environ.get("MAIL_PORT") or 8025)
    MAIL_USE_TLS = int(os.environ.get("MAIL_USE_TLS") or 1)
    MAIL_USERNAME = os.environ.get("MAIL_USERNAME")
    MAIL_PASSWORD = os.environ.get("MAIL_PASSWORD")
    # Custom
    ADMIN_EMAIL = os.environ.get("ADMIN_EMAIL") or f"no-reply@{MAIL_SERVER}"

    @property
    def POSTS_PER_PAGE(self):
        return 99 if True else 10
