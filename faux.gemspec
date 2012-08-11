# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faux/version'

Gem::Specification.new do |gem|
  gem.name          = "faux"
  gem.version       = Faux::VERSION
  gem.authors       = ["Kurtis Rainbolt-Greene"]
  gem.email         = ["kurtisrainboltgreene@gmail.com"]
  gem.summary       = 'faux a factory-type fake data and fake dataset generator'
  gem.description   = gem.summary
  gem.homepage      = "http://krainboltgreene.github.com/faux"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'yard', '~> 0.7'
  gem.add_development_dependency 'kramdown', '~> 0.13'
  gem.add_development_dependency 'rake', '~> 0.9'
end
