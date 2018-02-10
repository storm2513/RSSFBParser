# RSSFBParser

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/RSSFBParser`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'RSSFBParser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install RSSFBParser

## Usage

```
RSSFBParser.parse(your_amazing_url_to_rss_or_facebook_page)
RSSFBParser.parse(your_amazing_url_to_rss_or_facebook_page, posts_limit)
```
Returns array of hashes with 'title', 'description' and 'url' keys.

If you want to get posts from facebook page, you should specify facebook access token:
```
RSSFBParser.configuration.facebook_access_token = 'YOUR_FACEBOOK_ACCESS_TOKEN'
```

`posts_limit` parameter is optional. You can set your own defaults in configuration:
```
RSSFBParser.configuration.limit = 50
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/storm2513/RSSFBParser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RSSFBParser project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/RSSFBParser/blob/master/CODE_OF_CONDUCT.md).
