# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'muzzle/version'

Gem::Specification.new do |spec|
  spec.name          = 'muzzle'
  spec.version       = Muzzle::VERSION
  spec.authors       = ['Gabriel Evans']
  spec.email         = ['gabriel@codeconcoction.com']
  spec.description   = %q{A rate limiter for both API services and consumers.}
  spec.summary       = %q{A rate limiter for both API services and consumers.}
  spec.homepage      = 'https://github.com/gevans/muzzle'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
