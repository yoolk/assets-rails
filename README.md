# Assets-Rails

`Assets-Rails` allows you to require javascript and stylesheet libraries with the exact version so that your frontend stuffs will continue to work as times passed by. It's similar to Bundler's **Gemlock.file**.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'assets-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install assets-rails

## Usage

The good use case of this gem is that you have a Rails application which allows external designers to build themes. In this case, you have no control on those themes or you have too many themes to work on when upgrading the frontend framework such as: **jquery** or **bootstrap**.  Why it's hard to upgrade? It's because of this line:

```javascript
  //= require bootstrap
```

This above line **currently** means require **bootstrap.v3.2.0**. As times passed by, **bootstrap** team releases newer version, the above line will fail out the existing themes. **Assets-Rails** allows you to require with the exact version inside your manifest files. This allows you to work on new themes and keep the existing themes continue to work as normal.

```javascript
  //= require bootstrap/v3.2.0
```

Currently, Assets-Rails has bundled the following libraries:

1. jquery: [v1.11.1](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/jquery/v1.11.1.js), [v2.1.1](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/jquery/v2.1.1.js)
2. bootstrap: [v3.2.0](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/bootstrap/v3.2.0.js)
3. jquery.collageplus [v0.3.3](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/jquery.collageplus/v0.3.3.js)
4. jquery.colorbox [v1.5.14](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/jquery.colorbox/v1.5.14.js)
5. jquery.expander [v1.4.12](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/jquery.expander/v1.4.12.js)
6. [jquery.fakecrop](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/jquery.fakecrop.js)
7. jquery.fancybox [v2.1.5](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/jquery.fancybox/v2.1.5.js)
8. jquery.flexslider [v2.2.2](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/jquery.flexslider/v2.2.2.js)
9. jquery.render [v1.1.0](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/jquery.render/v1.1.0.js)
10. jquery.timeago [v1.4.1](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/jquery.timeago/v1.4.1.js)
11. zebra_datepicker [v1.8.9](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/javascripts/zebra_datepicker/v1.8.9.js)
12. font-awesome [v4.2.0](https://github.com/yoolk/assets-rails/blob/master/vendor/assets/stylesheets/font-awesome/v4.2.0.css)

## Authors

* [Chamnap Chhorn](https://github.com/chamnap)