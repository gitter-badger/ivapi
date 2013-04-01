# Ivapi

Gem which helps to communicate with [iv.lt][] API

## Installation

Add this line to your application's Gemfile:

    gem 'ivapi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ivapi

## Usage

Create new account at https://klientams.iv.lt/users.php with description "API".

Create config file **config/ivapi.yml** and fill in with username and password.
```ruby
username: YOUR USERNAME
password: YOUR PASSWORD
```


```ruby
require 'ivapi'

API_NAME = "your_account_name"
API_PASSWORD = "your_account_password"

account = Ivapi::Account.new

puts "Account name: #{account.info['ac_name']}"
puts "Account created: #{account.info['ac_created']}"

account.services.each do |order|
  puts "Id: #{order['se_id']} Description: #{order['se_description']}"
end

server = Ivapi::Server.new.id(123) # Where is id, there is your service id.
server.tasks.each do |task| # can be: server.tasks(:count => 15) (Max: 1000)
	puts "Id: #{task['ta_id']} Command: #{task['ta_command']}"
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[iv.lt]: http://www.iv.lt