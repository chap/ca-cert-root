require "sinatra"
require 'open-uri'

set :raise_errors, true

get '/*' do
  return open(ENV['TEST_URL'], ssl_ca_cert: 'cacert.pem').read.to_s
end
