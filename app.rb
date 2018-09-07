require "sinatra"
require "sinatra/json"


AUTH_USER = ENV["AUTH_USER"] || "paris"
AUTH_PASSWORD = ENV["AUTH_PASSWORD"] || "kasidiaris"


use Rack::Auth::Basic, "Authorization Required" do |username, password|
    username == AUTH_USER && password == AUTH_PASSWORD
end


post "/" do
  json :greeting => "Geia sou"
end