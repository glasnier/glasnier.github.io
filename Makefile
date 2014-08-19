
all: local

git: 
	jekyll build
	echo "The website has been built in _site/ for git use"

local: 
	jekyll build --config _configs/_config-local.yml
	echo "The website has been built in _site/ for local use"

release: 
	jekyll build --config _configs/_config-release.yml
	echo "The website has been built in _site/ for release use"

clean:
	rm -rf *~ _site
