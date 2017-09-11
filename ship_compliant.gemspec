# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ship_compliant/version'

Gem::Specification.new do |s|
  s.name          = "ship_compliant"
  s.version       = ShipCompliant::VERSION
  s.authors       = ["Baylor Rae'"]
  s.email         = ["baylorrae@gmail.com"]
  s.summary       = %q{SOAP Api Client for ShipCompliant}
  s.description   = %q{The ShipCompliant gem is an API Client for the SOAP API provided by ShipCompliant. This gem has been created for fast implementation and supports the 9 main API calls.}
  s.homepage      = "http://baylorrae.github.io/ship_compliant-ruby"
  s.license       = "MIT"

  s.required_ruby_version = '>= 2.2.2'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency "activesupport", "~> 5.0"
  s.add_dependency "savon", "~> 2.3"

  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "sdoc", "~> 0.4"
  s.add_development_dependency "pry", "~> 0.9"

  # TESTING
  s.add_development_dependency "rspec", "~> 3.3"
  s.add_development_dependency "cucumber", "~> 1.3"
  s.add_development_dependency "webmock", "~> 1.17"
  s.add_development_dependency "vcr", "~> 2.9"
  s.add_development_dependency "dotenv", "~> 2.0"
end
