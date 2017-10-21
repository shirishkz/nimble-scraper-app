Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_API_KEY'], ENV['TWITTER_API_SECRET']
  provider :github, ENV['GITHUB_API_KEY'], ENV['GITHUB_API_SECRET']
end