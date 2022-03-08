# Trestle GoodJob Integration (trestle-good_job)

> GoodJob integration plugin for the Trestle admin framework

## Getting Started

These instructions assume you have a working Trestle application. To integrate trestle-good_job, first add it to your application's Gemfile:

```ruby
gem "trestle-good_job", github: "blhack-it/trestle-good_job"
```

Run `bundle install`, and then restart your Rails server. You will then be able to access the GoodJob dashboard by accessing `/admin/good_job`
or by clicking the GoodJob button in the Trestle header.

Trestle-good_job will hook into the [trestle-auth](https://github.com/TrestleAdmin/trestle-auth) plugin to ensure that the GoodJob dashboard
can only be accessed by authenticated users.


To make iframes/frame tags work with GoodJob you need to set the following code in your `/config/initializers/content_security_policy.rb`

```
Rails.application.configure do
  config.content_security_policy do |policy|
    policy.frame_ancestors :self
  end
end
```

## License

The gem is available as open source under the terms of the [LGPLv3 License](https://opensource.org/licenses/LGPL-3.0).
