require 'ostruct'
require 'yaml'

if Rails.env == 'production'
  env_config = ActiveSupport::JSON.decode(ENV['yaml_config'])
else
  env_config = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env] rescue {}
end
AppConfig = OpenStruct.new(env_config)
