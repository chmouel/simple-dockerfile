from flask.ext.sqlalchemy import SQLAlchemy
from flask import Flask

cnx_string = 'mysql+pymysql://chmouel:chmouel@simple-test-db/chmouel'
app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = cnx_string
app.config['DEBUG'] = True
db = SQLAlchemy(app)


class HitNumber(db.Model):
    id = db.Column(db.Integer, primary_key=True)

db.create_all()
