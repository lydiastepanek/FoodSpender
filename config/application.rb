require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LsFinalproject
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.paperclip_defaults = {
      :storage => :s3,
      :path => "images/:class/:id.:style.:extension", # this is how you specify
      :s3_credentials =>  {                           # the path and file name
        :bucket => ENV["S3_BUCKET"],
        :access_key_id => ENV["S3_ACCESS_KEY_ID"],
        :secret_access_key => ENV["S3_SECRET_ACCESS_KEY"],
        :s3_host_name => "s3.amazonaws.com" # to find this, manually upload a file into your S3 bucket and then look at the file's properties (button in the top right in the bucket). The host_name is the host of the "link" for the file.
      }
    }

  end
end
