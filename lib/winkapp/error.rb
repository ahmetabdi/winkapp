module Winkapp
  class Error < StandardError
    attr_reader :code
    alias :msg :message
    def initialize(msg, code=nil)
      @code = code
      message = msg
      message = msg + " - #{code}" unless code.nil?
      super(message)
    end
  end
end