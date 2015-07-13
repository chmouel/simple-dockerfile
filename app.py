import getpass
import unittest.mock as mock

from flask.ext.sqlalchemy import SQLAlchemy
from flask import Flask

cnx_string = 'mysql+pymysql://chmouel:chmouel@simple-test-db/chmouel'
app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = cnx_string
app.config['DEBUG'] = True
db = SQLAlchemy(app)

class HitNumber(db.Model):
    id = db.Column(db.Integer, primary_key=True)


@app.route("/")
def hello():
    db.create_all()
    return "Welcome to Python Flask App!"

if __name__ == "__main__":
    # see https://lists.openshift.redhat.com/openshift-archives/dev/2015-July/msg00043.html
    with mock.patch.object(getpass, "getuser", return_value='default'):
        app.run(use_debugger=True, debug=app.debug,
                use_reloader=True, host='0.0.0.0',
                port=8000)
