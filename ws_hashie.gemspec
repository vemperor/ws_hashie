# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ws_hashie/version'

Gem::Specification.new do |spec|
  spec.name          = "ws_hashie"
  spec.version       = WsHashie::VERSION
  spec.authors       = ["Emperor", "Ildar"]
  spec.email         = ["valentine.emperor@gmail.com"]
  spec.description   = "Workshop Hashie"
  spec.summary       = "Workshop Hashie"
  spec.homepage      = "https://github.com/vemperor/ws_hashie"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end