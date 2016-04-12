# Persistent::Cache::StorageAPI

This gem encodes the API that Persistent::Cache providers adhere to in order to plug in as a back-end to Persistent::Cache. Please see https://rubygems.org/gems/persistent-cache.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'persistent-cache-storage-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install persistent-cache-storage-api

## Usage

Create storage providers by extending this api:

require 'persistent-cache-storage-api/storage_api'

module Persistent
  class StorageDirectory < Persistent::Cache::StorageApi::API
    # override API methods here
  end
end

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/evangraan/persistent-cache-storage-api. This gem was sponsored by Hetzner Pty Ltd.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

