
Welcome to Airport Data!  This gem will search for airports based on city, state, location ID or airport district office.  The search data includes the United States and its territories.  Search data includes the most recent data provided by the FAA.  


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'airport_data'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install airport_data

## Usage

To execute type ruby bin/airport after installation.  The program will first obtain updated airport data from the FAA within the United States and its territories - usually taking about a minute depending on connection speed.  The airport data menu will appear next and provide search options.  Searches are not case sensitive.  

## Development

After checking out the repo, run `bin/setup` to install dependencies.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'immutable-bug-4897'/airport_data. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AirportData project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'immutable-bug-4897'/airport_data/blob/master/CODE_OF_CONDUCT.md).
