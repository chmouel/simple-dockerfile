import os

from flask.ext.sqlalchemy import SQLAlchemy
from flask import Flask

if 'OPENSHIFT_BUILD_SOURCE' in os.environ:
    cnx_string = 'mysql+pymysql://chmouel:chmouel@simple-test-db/chmouel'
else:
    cnx_string = 'mysql+pymysql://chmouel:chmouel@localhost/chmouel'
app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = cnx_string
app.config['DEBUG'] = True
db = SQLAlchemy(app)

class HitNumber(db.Model):
    id = db.Column(db.Integer, primary_key=True)


@app.route("/")
def hello():
    return "Welcome to Python Flask App!"

if __name__ == "__main__":
    app.run(use_debugger=True, debug=app.debug,
            use_reloader=True, host='0.0.0.0',
            port=8000)
