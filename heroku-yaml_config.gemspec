# -*- encoding: utf-8 -*-
require File.expand_path('../lib/heroku-yaml_config/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Erik Escobedo"]
  gem.email         = ["erik@mojotech.com"]
  gem.description   = 'It works!'
  gem.summary       = 'It works!'
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "heroku-yaml_config"
  gem.require_paths = ["lib"]
  gem.version       = Heroku::YamlConfig::VERSION
end
