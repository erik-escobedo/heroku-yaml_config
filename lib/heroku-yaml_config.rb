require "heroku-yaml_config/version"

module Heroku
  module YamlConfig
    require 'heroku-yaml_config/railtie'  if defined?(Rails)
  end
end
