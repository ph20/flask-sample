# Sample flask app project
## Goals
The main project goals are:
- sample skeleton for fast start develop;
- usage flask_sample package from pypi for checking docker python web app packaging;

## Configure development environment
Creating virtual environment with venv module
```
python3 -m venv ./venv
source ./venv/bin/activate
pip install -e .[dev]
```
Try to run application in development mode

```python ./src/flask_sample/app.py```

## Preparing python packages
source package ```python setup.py build sdist```

wheel package ```python setup.py build bdist_wheel```

Find packages in `dist` directory

## Deploying on production
```
pip3 install flask-sample[gunicorn]
gunicorn --bind 127.0.0.1:8088 flask_sample.wsgi
```