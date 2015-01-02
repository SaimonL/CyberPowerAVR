# CyberPowerAVR

## Requirements

Install the CyberPowerAVR "pwrstat" application from
[CyberPower website](http://www.cyberpowersystems.com/products/management-software/ppl.html).

Set password less sudo access to pwrstat

    sudo visudo
    your_user_name ALL = NOPASSWD: /usr/sbin/pwrstat

Note: your_user_name can be any user that is running the application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'CyberPowerAVR'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install CyberPowerAVR

## Usage

## Contributing

1. Fork it ( https://github.com/SaimonL/CyberPowerAVR/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
