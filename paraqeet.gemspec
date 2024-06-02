# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "paraqeet"
  spec.version = "2.0.2"
  spec.author = "Robert Love"
  spec.email = "robertjohnlove@gmail.com"

  spec.summary = "A Jekyll theme for building websites with Bootstrap"
  spec.homepage = "https://signified.github.io/paraqeet"
  spec.license = "MIT"

  spec.description = <<-EOF
    Paraqeet is a Jekyll theme for building websites using Bootstrap - the most
    popular HTML, CSS, and JS library in the world. Paraqeet comes pre-loaded
    with the latest versions of Bootstrap and Bootstrap Icons - the official
    open source SVG icon library for Bootstrap, as well as built-in Sass support
    for Rouge - Jekyll’s default code syntax highlighter.
  EOF

  spec.metadata = {
    "bug_tracker_uri"   => "https://github.com/signified/paraqeet/issues",
    "changelog_uri"     => "https://github.com/signified/paraqeet/releases",
    "documentation_uri" => "https://signified.github.io/paraqeet",
    "homepage_uri"      => "https://signified.github.io/paraqeet",
    "source_code_uri"   => "https://github.com/signified/paraqeet"
  }

  spec.files = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
