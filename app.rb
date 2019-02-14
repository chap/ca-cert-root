require "sinatra"
require 'open-uri'

get '/*' do
  return open(ENV['TEST_URL'], ssl_ca_cert: '/usr/lib/ssl/certs/ca-certificates.crt').read
end
