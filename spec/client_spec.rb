require 'rspec'
require 'spec_helper'

describe Winkapp::Client do

  describe "With a client" do
    before(:each) do
      @find = Winkapp::Client
    end

    it "should create a new client" do
      b = Winkapp.new(login, api_key)
      expect(Winkapp::Client).to equal(b.class)
    end

    it "should create a new client with generic OAuth2 access token" do
      b = Winkapp.new(access_token)
      expect(Winkapp::Client).to equal(b.class)
    end

    it "should create a new client and configure with a block" do
      Winkapp.configure do |config|
        config.api_key = api_key
        config.login = login
      end

      b = Winkapp.client

      raise b.api_key.inspect
      expect(b).to be_a_kind_of(Winkapp::Client)
      expect(b.api_key).to eq(api_key)
      expect(b.login).to eq(login)
    end

  end
end