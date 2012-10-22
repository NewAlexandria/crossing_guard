require 'config'
Config.using(Config.config[:conf])

module Morpheus
  def self.config
    @config ||= Config.config
  end

  def self.sleep(command)
    dream_file = File.open(config[:dreams], 'a+') do |f|
      f.write "#{command}\n"
    end
  end

  def self.awaken
    filename = config[:dreams]
    file_safe = filename+'.op'

    File.rename(filename, file_safe)
    IO.readlines(file_safe).uniq.each do |d|
      `#{d}`
    end
    File.delete(file_safe)
  end
end
