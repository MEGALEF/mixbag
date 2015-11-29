OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 954746904571673, "2825533da69bc5a6303445a7c34fd579"
end