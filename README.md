# Administrate::Field::OrderedHasMany

This plugin allows you to manage ordered `has_many` relationships within [Administrate](https://github.com/thoughtbot/administrate). The relationships must be defined on the parent in the form of a SQL array field with the name `ordered_#{association_name}_ids`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'administrate-field-ordered_has_many'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install administrate-field-ordered_has_many

## Usage

In the dashboard for the parent resource, set the attribute type for your ordered `has_many` association to `Field::OrderedHasMany`. The edit UI will now show a set of select boxes for each association defined by the array value.

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/coderedcode/administrate-field-ordered_has_many](https://github.com/coderedcode/administrate-field-ordered_has_many).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
