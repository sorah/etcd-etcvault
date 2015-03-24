# Etcd::Etcvault - etcd-ruby extension for [etcvault](https://github.com/sorah/etcvault)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'etcd-etcvault'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install etcd-etcvault

## Usage

``` ruby
p Etcd.client.node('/etcvault_processed_key').etcvault
p Etcd.client.node('/etcvault_processed_key').etcvault_error
```

## License

MIT License
