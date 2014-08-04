require 'rspec'
require 'spec_helper'

describe Winkapp::Client do

  describe "With a client" do
    before(:each) do
      @find = Winkapp::Client
    end

    it "should create a new client with a username and password" do
      b = Winkapp.new(username, password)
      expect(Winkapp::Client).to equal(b.class)
    end

    it "should fail when trying to create a client without credentials" do
      expect{Winkapp.new}.to raise_error(Winkapp::Error, 'Must provide a username and password')
    end

    it "should create a new client and configure with a block" do
      Winkapp.configure do |config|
        config.username = username
        config.password = password
      end

      b = Winkapp.client

      expect(b).to be_a_kind_of(Winkapp::Client)
      expect(b.username).to eq(username)
      expect(b.password).to eq(password)
    end

  end
end