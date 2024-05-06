# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "aemi"
  spec.version       = "1.2.8"
  spec.authors       = ["Guillaume C"]
  spec.email         = ["public@gcqd.fr"]

  spec.summary       = "Aemi theme, thought to mimic the Aemi WordPress Theme."
  spec.homepage      = "https://github.com/aemi-dev/aemi-jekyll-theme"
  spec.license       = "MIT"

  spec.files          = Dir['_data/*.yml']
  spec.files         += Dir['_includes/*.html']
  spec.files         += Dir['_layouts/*.html']
  spec.files         += Dir['_sass/*.scss']
  spec.files         += Dir['_sass/aemi/*.scss']
  spec.files         += Dir['assets/main.scss']
  spec.files         += Dir['assets/index.html']
  spec.files         += Dir['assets/images/**/*']
  spec.files         += Dir['assets/font-files/*']
  spec.files         += Dir['robots.txt']

  spec.required_ruby_version = ">= 2.7.0"
  spec.add_runtime_dependency "jekyll", ">= 4.3.3"
  spec.add_runtime_dependency "jekyll-feed", ">= 0.17"
  spec.add_runtime_dependency "aemi-seo-tag", ">= 0.0.1"
  spec.add_runtime_dependency "jekyll-sitemap", ">= 1.4.0"

  spec.add_development_dependency "webrick", ">= 1.7"
end
