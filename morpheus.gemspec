# -*- encoding: utf-8 -*-     
$:.push File.expand_path("../lib", __FILE__)
require "morpheus/version"

Gem::Specification.new do |s|
  s.name        = 'morpheus'
  s.version     = Morpheus::Version.to_s
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Zachary StarkJones']
  s.email       = ['zak@newalexandria.org']  
  s.homepage    = 'http://github.com/newalexandria/morpheus'
  s.summary     = 'Sleep and wake managed cron jobs' 
  s.description = 'Configure sleep times for cron (or any called job) in a central place.'
    
  s.files        = `git ls-files`.split("\n")   
  s.test_files   = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_path = ['lib']
end
