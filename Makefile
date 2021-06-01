.PHONY: setup clean

setup: \
	node_modules \
	dependency/prh.yml

node_modules:
	npm install --dev

dependency/prh.yml: | dependency
	git clone git@github.com:azu/prh.yml.git $@

dependency:
	-mkdir $@

clean:
	-rm -rf node_modules
	-rm -rf dependency
