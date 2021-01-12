# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-cadre"
  spec.version       = `cat version.txt` 
  spec.authors       = ["Stephen Lee"]
  spec.email         = ["smlee.981@gmail.com"]

  spec.summary       = "A responsive, modern, Jekyll theme for bloggers with Bootstrap styling and KaTex support."
  spec.homepage      = "https://github.com/slee981/jekyll-theme-cadre"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_plugins|_sass|LICENSE|README)!i) }

  # these two do not seem to be compatible 
  # spec.add_runtime_dependency "jekyll", "~> 4.2.0"
  # spec.add_runtime_dependency "github-pages", "~> 209"
  spec.add_runtime_dependency "kramdown-parser-gfm", '~> 1.1'
  spec.add_runtime_dependency 'jekyll-paginate', '~> 1.1'
  spec.add_runtime_dependency 'jekyll-feed', '~> 0.15.1'
  spec.add_runtime_dependency 'jekyll-seo-tag', '~> 2.6'
  spec.add_runtime_dependency 'jekyll-sitemap', '~> 1.4'

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 12.0"
end
