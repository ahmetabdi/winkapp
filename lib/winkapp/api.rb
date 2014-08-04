module Winkapp
  class Api
    include HTTParty
    base_uri 'https://winkapi.quirky.com/'
    format :json
    headers 'Accept' => 'application/json'
    headers 'Content-Type' => 'application/json'
  end
end