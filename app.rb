require "sinatra"
require "sinatra/json"


def read_secret(name, default)
  secret_file = "/run/secrets/#{name.downcase}"

  if File.file?(secret_file)
    return File.read(secret_file)
  end

  secret_environment_variable = name.upcase

  return ENV[secret_environment_variable] || default
end


AUTH_USER = read_secret("auth_user", "paris")
AUTH_PASSWORD = read_secret("auth_password", "kasidiaris")


use Rack::Auth::Basic, "Authorization Required" do |username, password|
    username == AUTH_USER && password == AUTH_PASSWORD
end


post "/" do
  json :greeting => "Chào"
end
