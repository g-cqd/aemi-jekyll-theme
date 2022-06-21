# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "aemi"
  spec.version       = "1.0.0"
  spec.authors       = ["Guillaume C"]
  spec.email         = ["public@gcqd.fr"]

  spec.summary       = "Aemi theme, thought to mimic the Aemi WordPress Theme."
  spec.homepage      = "https://github.com/aemi-dev/aemi-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.12"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8.0"
end
