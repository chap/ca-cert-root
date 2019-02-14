require "sinatra"

get '/*' do
  return open(ENV['TEST_URL']).read
end
