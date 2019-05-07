CSS_STYLE=compressed

all: clean build

clean:
	rm -rf app.css

.PHONY: app.css
build: app.css

dev: csswatch
	@$(MAKE) -s -j _dev

app.css:
	sass --compass --update --style compressed sass/app.sass:app.css

csswatch:
	sass --compass --watch --style $(CSS_STYLE) sass/app.sass:app.css
