Geocoder.configure(
  lookup: :google,
  language: :en,
  use_https: true,
  api_key: ENV.fetch("GOOGLE_API_SERVER_KEY"),
)
