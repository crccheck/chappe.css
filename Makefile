CSS_STYLE=compressed

all: clean build

clean:
	rm -rf app.css
	rm -rf app.js

build: app.css

dev:
	@$(MAKE) -s -j _dev

_dev: server csswatch

server:
	python -m SimpleHTTPServer $(PORT)

app.css:
	sass --compass --update --style compressed sass/app.sass:app.css

csswatch:
	sass --compass --watch --style $(CSS_STYLE) sass/app.sass:app.css
