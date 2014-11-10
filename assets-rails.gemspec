# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'assets-rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'assets-rails'
  spec.version       = Assets::Rails::VERSION
  spec.authors       = ['Chamnap Chhorn']
  spec.email         = ['chamnapchhorn@gmail.com']
  spec.summary       = %q{Require the versioned js/css libraries in your rails asset pipeline.}
  spec.description   = %q{Require the versioned js/css libraries in your rails asset pipeline. You can use different versions for different templates in a single Rails application.}
  spec.homepage      = ''
  spec.license       = 'MIT'
  spec.required_ruby_version     = '>= 2.0.0'
  spec.required_rubygems_version = '>= 1.8.11'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency             'railties', '>= 3.2'

  spec.add_development_dependency 'bundler',  '~> 1.7'
  spec.add_development_dependency 'rake',     '~> 10.0'
end
