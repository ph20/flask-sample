#!/usr/bin/env python3
# -*- coding: UTF-8 -*-

from flask import Flask
from flask import render_template
from flask.cli import FlaskGroup
from flask import __version__
import click

APP_NAME = 'sample flask app'

app = Flask(__name__)


@app.route('/')
def home():
    return render_template('index.html', flask_ver=__version__)


@click.command()
@click.argument('path')
@click.group(cls=FlaskGroup)
def gatherstatick(path):
    click.echo(path)


if __name__ == '__main__':
    app.run()
