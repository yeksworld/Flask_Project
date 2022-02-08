import os

from flask import Flask
from flask import jsonify

from demo_app import db

def create_app(test_config=None):
    """Create and configure an instance of the Flask application."""
    app = Flask(__name__, instance_relative_config=True)
    app.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE=os.path.join(app.instance_path, 'demo_app.sqlite'),
    )

    if test_config is None:
        app.config.from_pyfile('config.py', silent=True)
    else:
        app.config.update(test_config)

    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    @app.route('/healthy')
    def health():
        return jsonify({'status': 'OK',
                        'message': 'service healthy'}), 200

    db.init_app(app)

    from demo_app import auth, demo, api
    app.register_blueprint(auth.bp)
    app.register_blueprint(demo.bp)
    app.register_blueprint(api.bp)
    app.add_url_rule('/', endpoint='index')

    return app
