.PHONY: bootstrap

bootstrap:
	pip install -r requirements.txt
	dropdb calaccess_raw_tes --if-exists
	createdb calaccess_raw_test
	python mysite/manage.py migrate
	python mysite/manage.py updatecalaccessrawdata --keep-files --verbosity=3 --noinput
