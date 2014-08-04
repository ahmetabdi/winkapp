# https://github.com/philnash/bitly/blob/master/lib/bitly/v3/client.rb
module Winkapp
  extend Config

  def self.new(username=nil, password=nil)
    Winkapp::Client.new(username, password)
  end

  # Get and initialize a client if configured using Config
  def self.client
    Winkapp::Client.new(username, password)
  end

  class Client
    attr_accessor *Config::OPTION_KEYS
    API_URL_SSL = 'http://winkapi.quirky.com/'
    include HTTParty
    base_uri 'http://winkapi.quirky.com/'
    # format :json
    # headers 'Accept' => 'application/json'
    # headers 'Content-Type' => 'application/json'

    def initialize(username, password)
      @username = username
      @password = password
      raise Error.new('Must provide a username and password','500') if @username.nil? || @password.nil?
    end

  end
end