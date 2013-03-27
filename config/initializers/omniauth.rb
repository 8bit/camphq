require File.expand_path('lib/omniauth/strategies/kekeewin', Rails.root)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :kekeewin, ENV["OAUTH_ID"], ENV["OAUTH_SECRET"]
end