# Load the Rails application.
require File.expand_path('../application', __FILE__)

#load env_vars file for development
env_vars = File.join(Rails.root, '/config/env_vars.rb')
load(env_vars) if File.exists?(env_vars)

# Initialize the Rails application.
GatewayForm::Application.initialize!


ActionMailer::Base.smtp_settings = {
  user_name:  PROTECTED_USERNAME,
password: PROTECTED_PASSWORD,
  address: 'smtp.gmail.com',
  port: 587,
  authentication: 'plain',
  enable_starttls_auto: true
   }



