NAME=jekyll-theme-cadre 

start: 
	bundle exec jekyll serve

publish-gem: cleanup
	gem build $(NAME).gemspec
	GEMFILE=$(ls *.gem)
	gem push $(GEMFILE)

cleanup: 
	rm -f *.gem