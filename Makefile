install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	python -m pytest -vv test.py
	python -m pytest --nbval Notebook1.ipynb

lint:
	pylint --disable=R,C bonjour.py

all: install lint test
