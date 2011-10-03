# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "craigalytics/version"

Gem::Specification.new do |s|
  s.name        = "craigalytics"
  s.version     = Craigalytics::VERSION
  s.authors     = ["1337807"]
  s.email       = ["jonanscheffler@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Count keywords within craigslist posts.}
  s.description = %q{Craigalytics will grab all the posts from a specific category on U.S. craigslist pages and search those posts for specific keywords.}

  s.rubyforge_project = "craigalytics"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "feedzirra"
end
