# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'palindrome/version'

Gem::Specification.new do |spec|
  spec.name          = "palindrome"
  spec.version       = Palindrome::VERSION
  spec.authors       = ["Cristian Tountzis"]
  spec.email         = ["cristian.tountzis@fridaymedia.com.au"]
  spec.summary       = %q{Palindrome?}
  spec.description   = %q{Checks if string is a palindrome}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['palindrome'] 
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
