namespace :heroku do
  task :config do
    file_name = "#{Rails.root}/config/config.yml"
    puts "Reading #{file_name}..."

    if File.exists?(file_name)
      env_config = YAML.load_file(file_name)['production']
      File.open('.env', 'w') { |f| f.write("yaml_config=#{ActiveSupport::JSON.encode(env_config)}") }

      puts 'Removing old YAML configuration from heroku...'
      system 'heroku config:remove yaml_config'

      puts 'Pushing new YAML configuration to heroku...'
      system 'heroku config:push'
      system 'rm .env'
    else
      "Error: #{file_name} wasn't found!"
    end
  end
end
