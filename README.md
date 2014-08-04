# Winkapp

http://docs.wink.apiary.io/

## Installation

Add this line to your application's Gemfile:

    gem 'winkapp'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install winkapp

## Usage

Configure winkapp through initializer

If you want to configure bitly through an initializer (e.g. config/initializers/bitly.rb), do the following:

``Winkapp.configure do |config|
  config.api_version = 3
  config.login = "Bitly_Username"
  config.api_key = "API_KEY"
end``

stead of using ``Winkapp.new(username, api_key)`` to get the client, use ``Winkapp.client``:

``client = Winkapp.client``

## Contributing

1. Fork it ( https://github.com/[my-github-username]/winkapp/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
