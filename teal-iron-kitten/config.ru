#\ -w -p 8765
use Rack::Reloader, 0
use Rack::ContentLength

app = proc do |env|
  [ 200, {'Content-Type' => 'text/plain'}, ["Hello World - #{RUBY_VERSION} - #{RUBY_PLATFORM}"] ]
end

run app
