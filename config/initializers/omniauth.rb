Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, 'ae419e6e60946095f65b', '0865aae0eb24be2898ba8ac8d3648edde5000846'
end
