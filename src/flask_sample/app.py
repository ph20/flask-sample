#!/usr/bin/env python3
# -*- coding: UTF-8 -*-

from flask import Flask
from flask import render_template
from flask import __version__

APP_NAME = 'sample flask app'

app = Flask(__name__)


@app.route('/')
def hello_world():
    return render_template('index.html', flask_ver=__version__)


if __name__ == '__main__':
    app.run()
