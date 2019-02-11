# PorosRUs

Plain ole ruby objects for our building api. includes find, all, edit, create, and destroy


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'poros_r_us'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install poros_r_us

## Usage

Building.find(ENTER ID NUMBER HERE)
Building.all #show all buildings
Building.create #create a new building with these attributes
    id
    name
    address
    height
    construction_date
    architect
Building.edit(ENTER ID NUMBER HERE)
Update
Destroy

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/poros_r_us. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PorosRUs project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/poros_r_us/blob/master/CODE_OF_CONDUCT.md).
# poros_r_us
