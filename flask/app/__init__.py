import os
import logging
from logging.handlers import RotatingFileHandler
from flask import Flask


def create_app(config_class):
    app = Flask(__name__, static_url_path="")
    app.config.from_object(config_class)

    # Importing blueprints
    from .main import bp as main_bp
    from .errors import bp as errors_bp
    # Registering blueprints
    app.register_blueprint(main_bp)
    app.register_blueprint(errors_bp)

    # Logging errors to file
    if not os.path.exists("log"):
        os.mkdir("log", mode=0o777)

    file_handler = RotatingFileHandler(
        "log/app.log", maxBytes=10240, backupCount=10
    )
    file_handler.setFormatter(
        logging.Formatter(
            "%(asctime)s %(levelname)s:%(message)s [in %(pathname)s: %(lineno)d]"
        )
    )
    app.logger.addHandler(file_handler)
    app.logger.setLevel(logging.INFO)
    app.logger.info("wsgi-app is running...")
    return app