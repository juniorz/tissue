# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tissue/version"

Gem::Specification.new do |s|
  s.name        = "tissue"
  s.version     = Tissue::VERSION
  s.authors     = ["Reinaldo Junior"]
  s.email       = ["juniorz@gmail.com"]
  s.homepage    = "https://github.com/juniorz/tissue"
  s.summary     = %q{Load cell views from all your engines}
  s.description = %q{Tissue extends cells, loading views from Rails::Engine-spread "app/cells"}

  s.rubyforge_project = "tissue"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'railties',        '>= 3.0.0'
  s.add_dependency 'activesupport',   '>= 3.0.0'
  s.add_dependency 'cells',           '>= 3.5.4'

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
