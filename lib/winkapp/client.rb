# https://github.com/philnash/bitly/blob/master/lib/bitly/v3/client.rb
module Winkapp
  extend Config

  def self.new(login, api_key = nil, timeout=nil)
    Winkapp::Client.new(login, api_key, timeout)
  end

  # Get and initialize a client if configured using Config
  def self.client
    # api_verison, login, and api_key are set in Config
    Winkapp::Client.new(login, api_key, timeout)
  end

  class Client
    attr_accessor *Config::OPTION_KEYS
    API_URL_SSL = 'http://winkapi.quirky.com/'
    include HTTParty
    base_uri 'http://winkapi.quirky.com/'
    # format :json
    # headers 'Accept' => 'application/json'
    # headers 'Content-Type' => 'application/json'

    def initialize(*args)
      args.compact!
      self.timeout = args.last.is_a?(Fixnum) ? args.pop : nil
      if args.count == 1
        # Set generic OAuth2 access token and change base URI (use SSL)
        @default_query_opts = { :access_token => args.first }
        self.class.base_uri API_URL_SSL
      end
    end

    def timeout=(timeout=nil)
      self.class.default_timeout(timeout) if timeout
    end

  end
end