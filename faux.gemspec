# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "faux/version"

Gem::Specification.new do |s|
  s.name        = "faux"
  s.version     = Faux::VERSION
  s.authors     = ["Kurtis Rainbolt-Greene"]
  s.email       = ["kurtisrainboltgreene@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "faux"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'yard'
  s.add_development_dependency 'kramdown'
  s.add_development_dependency 'minitest' if RUBY_VERSION =~ /1\.8/
  s.add_dependency 'backports' if RUBY_VERSION =~ /1\.8/
  s.add_dependency 'rake'
end
