module Winkapp
  module Config

    # Client options
    OPTION_KEYS = [
      :access_token,
      :username,
      :password,
      :client_id,
      :client_secret
    ]

    OPTION_KEYS.each do |field|
      attr_accessor field
    end

    def configure
      yield self
      self
    end

    def options
      options = {}
      OPTION_KEYS.each{|key| options[key] = send(key)}
      options
    end

  end
end