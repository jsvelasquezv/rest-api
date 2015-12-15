Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '616c1628f934f11963ab', 'f4667407766d0ba691adf55845718a32a44271eb', scope: 'email,profile'
  # provider :facebook,      ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  # provider :google_oauth2, ENV['GOOGLE_KEY'],   ENV['GOOGLE_SECRET']
end