Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, ENV['606415288118-v453nf5t8iij3a4smlf38eio8epj3hjh.apps.googleusercontent.com'], ENV['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']
  end
  OmniAuth.config.allowed_request_methods = %i[get]