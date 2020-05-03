# Sample flask app
The main goal this project just has a sample flask skeleton for forking and start extending

# Configure development environment
This commands should run in virtual environment

Processing dependencies for development environment

```python setup.py develop```

Try run application in development mode [DRAFT]

```python ./src/flask_sample/app.py```

# Preparing python packages
source package ```python setup.py build sdist```

wheel package ```python setup.py build bdist_wheel```

# Deploying on production [DRAFT]
```
# preparing virtual envinronment f.e.
....
pip install gunicorn
pin install flask-sample
gunicorn ...
```