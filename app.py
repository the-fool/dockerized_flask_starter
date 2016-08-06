import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy

application = Flask(__name__)
application.config['SQLALCHEMY_DATABASE_URI'] = os.environ['DATABASE_URL']
application.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
application.config['SECRET_KEY'] = os.environ['FLASK_SECRET_KEY']

db = SQLAlchemy(application)

@application.route('/')
def hello_docker():
    return '<h1>Containers make development easy</h1>'
