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

```
  require 'persistent-cache/storage_api'

  module Persistent
    class StorageDirectory < Persistent::Cache::StorageApi::API
      def initialize(storage_details)
        # storage_details includes connection strings, etc.
      end

      def save_key_value_pair(key, value, timestamp = nil)
        # stores a value indexed with the key, and tagged with the timestamp
        # provided, or the current time if timestamp is nil
      end

      def lookup_key(key)
        # returns the value indexed at the key, or nil
      end

      def delete_entry(key)
        # removes the key / value pair indexed at the key
      end

      def size()
        # returns the number of keys
      end

      def keys()
        # returns the keys in an array
      end

      def clear()
        # removes all key / value pairs
      end
    end
  end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/evangraan/persistent-cache-storage-api. This gem was sponsored by Hetzner (Pty) Ltd - http://hetzner.co.za

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

