require 'heroku-yaml_config'
require 'rails'
module Heroku
  module YamlConfig
    class Railtie < Rails::Railtie
      railtie_name :yaml_config

      rake_tasks do
        load 'tasks/heroku-yaml_config.rake'
      end
    end
  end
end
