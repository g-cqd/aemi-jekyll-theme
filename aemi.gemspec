# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "aemi"
  spec.version       = "1.0.10"
  spec.authors       = ["Guillaume C"]
  spec.email         = ["public@gcqd.fr"]

  spec.summary       = "Aemi theme, thought to mimic the Aemi WordPress Theme."
  spec.homepage      = "https://github.com/aemi-dev/aemi-jekyll-theme"
  spec.license       = "MIT"

  spec.files          = Dir['_includes/*.html']
  spec.files         += Dir['_includes/*.svg']
  spec.files         += Dir['_layouts/*.html']
  spec.files         += Dir['_sass/*.scss']
  spec.files         += Dir['_sass/aemi/*.scss']
  spec.files         += Dir['assets/index.html']
  spec.files         += Dir['assets/aemi-social-icons.svg']
  spec.files         += Dir['assets/main.scss']
  spec.files         += Dir['assets/font-files/*.woff2']
  spec.files         += Dir['assets/font-files/*.woff']
  spec.files         += Dir['robots.txt']

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.12"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4.0"

  spec.add_development_dependency "webrick", "~> 2.8.0"
end
