NAME = drupalwxt.io
VERSION = 4.0.0

all: build

prepare:
	cd themes/wxt && bower install

build:
	hugo server --theme=wxt --buildDrafts --watch

deploy:
	./deploy.sh
