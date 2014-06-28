
all: build

build: 
	jekyll build
	echo "The website has been built in _site/ for local use"

release: 
	jekyll build --config _configs/_config-release.yml
	echo "The website has been built in _site/ for release use"

clean:
	rm -rf *~
