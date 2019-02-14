require "sinatra"
require 'open-uri'

get '/*' do
  return open(ENV['TEST_URL']).read
end
