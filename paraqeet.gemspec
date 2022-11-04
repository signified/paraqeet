# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "paraqeet"
  spec.version       = "0.1.0"
  spec.authors       = ["Robert Love"]
  spec.email         = ["robertjohnlove@gmail.com"]

  spec.summary       = "A Jekyll theme for building websites with Bootstrap"
  spec.homepage      = "https://signified.github.io/paraqeet"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
end
