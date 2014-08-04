module Winkapp
  module Config

    # Client options
    OPTION_KEYS = [
      :access_token,
      :username,
      :password
    ]

    attr_accessor *OPTION_KEYS

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