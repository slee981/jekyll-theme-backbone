NAME=jekyll-theme-cadre

start: 
	bundle exec jekyll serve

gem: cleanup build publish 

build: cleanup 
	gem build $(NAME).gemspec

publish: 
	gem push $(shell ls *.gem)

cleanup: 
	rm -f *.gem

