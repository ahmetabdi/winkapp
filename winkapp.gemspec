# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'winkapp/version'

Gem::Specification.new do |spec|
  spec.name          = "winkapp"
  spec.version       = Winkapp::VERSION
  spec.authors       = ["Ahmet"]
  spec.email         = ["ahmetabdi@gmail.com"]
  spec.summary       = %q{winkapp}
  spec.description   = %q{winkapp}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
