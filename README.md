# Dotrb

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/dotrb`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dotrb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dotrb

## Usage

TODO: Write usage instructions here

Just a simple example 'till I come around to write the README:

File: config.rb
Tihs is the actual configuration file
```ruby
config.name = "Federico"

%i[one two three].each do |sym|
  config[sym] = sym.to_s.upcase
end

config[:style] = "PLAIN"

config["notes"] = [
                  "Note 1",
                  "Note 2",
                  "Note 3",
                 ]

config.nope = nil
```

To use it:

```ruby
config = Dotrb.new("./config.rb")
# => <Dotrb {:name=>"Federico", :one=>"ONE", :two=>"TWO", :three=>"THREE", :style=>"PLAIN", :notes=>["Note 1", "Note 2", "Note 3"], :nope=>nil}>

config.name       # => "Federico"
config.style      # => "PLAIN"
config[:notes]    # => ["Note 1", "Note 2", "Note 3"]
config[:nope]     # => nil

config.to_h
# => {:name=>"Federico",
#     :one=>"ONE",
#     :two=>"TWO",
#     :three=>"THREE",
#     :style=>"PLAIN",
#     :notes=>["Note 1", "Note 2", "Note 3"],
#     :nope=>nil}

```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dotrb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

