from flask import render_template
from ..errors import bp

@bp.app_errorhandler(404)
def not_found_error(error):
    return render_template("errors/404.html", title="Not Found!"), 404

@bp.app_errorhandler(500)
def not_found_error(error):
    return render_template("errors/500.html", title="Internal Error!"), 500

