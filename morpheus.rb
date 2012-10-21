#!/usr/bin/env ruby
require 'config'

if ARGV.any?
  Config.using('/etc/morpheus.conf'); config = Config.config

  dream_file = File.open(config[:dreams], 'a+') do |f|
    f.write ARGV.join(" ") + "\n"
  end

end
