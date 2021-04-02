Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, Rails.application.credentials.facebook[:app_id], Rails.application.credentials.facebook[:app_secret]
    provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end