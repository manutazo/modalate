require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

 if Rails.env.production?
   secrets_file = "/home/manuel/.rails_secrets.yml"
   SECRET = File.exists?(secrets_file) ? YAML.load_file(secrets_file) : {}
 else
   secrets_file = "../manuel/.rails_secrets_modalate.yml"
   SECRET = File.exists?(secrets_file) ? YAML.load_file(secrets_file) : {}
 end


module Modalia
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
