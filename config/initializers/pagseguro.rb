PagSeguro.configure do |config|
  config.token = ENV.fetch("PAGSEGURO_TOKEN")
  config.email = ENV.fetch("PAGSEGURO_EMAIL")
end
