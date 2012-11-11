# via nicholasbrochu.com

require 'yaml'

module Config
  # Configuration defaults
  @config = { :ops       => "/etc/crossing_guard.ops",
              :conf      => '/etc/crossing_guard.yml',
              :state     => 'red-pill' }

  @valid_config_keys = @config.keys

  # Configure through yaml file
  def self.using(path_to_yaml_file)
    begin
      config = YAML::load(IO.read(path_to_yaml_file))
    rescue Errno::ENOENT
      puts(:warning, "YAML configuration file couldn't be found. Using defaults."); return
      # log(:warning, "YAML configuration file couldn't be found. Using defaults."); return
    rescue Psych::SyntaxError
      puts(:warning, "YAML configuration file contains invalid syntax. Using defaults."); return
      # log(:warning, "YAML configuration file contains invalid syntax. Using defaults."); return
    end

    configure(config)
  end

  def self.config
    @config
  end

  private

  # Configure through hash
  def self.configure(opts = {})
    opts.each {|k,v| @config[k.to_sym] = v if @valid_config_keys.include? k.to_sym}
  end

end
