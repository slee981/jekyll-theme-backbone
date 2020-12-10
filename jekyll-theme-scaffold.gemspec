# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-scaffold"
  spec.version       = "1.0.0"
  spec.authors       = ["Songzi Vong"]
  spec.email         = ["sziv2p@gmail.com"]

  spec.summary       = "A minimalist yet powerful Jekyll theme for bloggers"
  spec.homepage      = "https://github.com/sziv2p/jekyll-theme-scaffold"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.0"
  spec.add_runtime_dependency 'jekyll-paginate', '~> 1.1'
  spec.add_runtime_dependency 'jekyll-feed', '~> 0.15'
  spec.add_runtime_dependency 'jekyll-seo-tag', '~> 2.6'
  spec.add_runtime_dependency 'jekyll-sitemap', '~> 1.4'

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 12.0"
end
