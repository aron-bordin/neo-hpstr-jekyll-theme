# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "neo-hpstr-jekyll-theme"
  spec.version       = "1.0.0"
  spec.authors       = ["Aron Bordin"]
  spec.email         = ["aron.bordin@gmail.com"]

  spec.summary       = %q{Neo-HPSTR Jekyll is a responsive and modern blog template.}
  spec.homepage      = "https://github.com/aron-bordin/neo-hpstr-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.3"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
