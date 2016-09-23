Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
  provider :paypal, ENV['APP_ID'], ENV['APP_TOKEN'], sandbox: true, scope: "openid profile email"
  provider :github, ENV['GITHUB_APP_ID'], ENV['GITHUB_APP_SECRET']
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
