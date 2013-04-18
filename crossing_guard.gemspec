# -*- encoding: utf-8 -*-     
$:.push File.expand_path("../lib", __FILE__)
require "crossing_guard/version"

Gem::Specification.new do |s|
  s.name        = 'crossing_guard'
  s.version     = CrossingGuard::Version.to_s
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['New Alexandria']
  s.email       = ['zak@newalexandria.org']  
  s.homepage    = 'http://github.com/newalexandria/crossing_guard'
  s.summary     = 'An on/off switch for crons and other shell traffic' 
  s.description = 'Configure wait times for crons (or any shell calls) in a central place. Currently supports a single wait queue.'
    
  s.files        = `git ls-files`.split("\n")   
  s.test_files   = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_path = ['lib']
end
