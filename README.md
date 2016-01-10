# Assets-Rails

**assets-rails** allows you to require javascript and stylesheet libraries with the exact version so that your frontend stuffs will continue to work as times passed by. You can use different versions for different templates in a single Rails application.

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

This above line **currently** means require **bootstrap.v3.2.0**. As times passed by, **bootstrap** team releases newer version, the above line will fail out the existing themes. **assets-rails** allows you to require with the exact version inside your manifest files. This allows you to work on new themes and keep the existing themes continue to work as normal.

```javascript
  //= require bootstrap/v3.2.0
```

Currently, assets-rails has bundled the following libraries:

1. bootstrap: [v3.2.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/bootstrap/v3.2.0.js), [v3.3.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/bootstrap/v3.3.0.js), [v3.3.2](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/bootstrap/v3.3.2.js), [v3.3.4](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/bootstrap/v3.3.4.js)
2. jquery: [v1.11.1](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery/v1.11.1.js), [v2.1.1](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery/v2.1.1.js)
3. jquery.collageplus [v0.3.3](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.collageplus/v0.3.3.js)
4. jquery.colorbox [v1.5.14](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.colorbox/v1.5.14.js)
5. jquery.expander [v1.4.12](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.expander/v1.4.12.js)
6. [jquery.fakecrop](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.fakecrop.js)
7. jquery.fancybox [v2.1.5](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.fancybox/v2.1.5.js)
8. jquery.flexslider [v2.2.2](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.flexslider/v2.2.2.js)
9. jquery.render [v1.1.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.render/v1.1.0.js)
10. jquery.timeago [v1.4.1](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.timeago/v1.4.1.js)
11. jquery.nivo.slider [v3.2](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.nivo.slider/v3.2.js)
12. jquery.owlcarousel [v1.3.3](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.owlcarousel/v1.3.3.js)
13. jquery.scrollto [v1.4.13](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.scrollto/v1.4.13.js)
14. jquery.infinitescroll [v2.0.2](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.infinitescroll/v2.0.2.js)
15. [jquery.pageless](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.pageless.js)
16. jquery.turbolinks [v2.1.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.turbolinks/v2.1.0.js)
17. jquery.cookie [v1.4.1](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.cookie/v1.4.1.js)
18. [jquery.share](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.share.js)
19. jquery.zoom [v1.7.13](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.zoom/v1.7.13.js)
20. nprogress [v0.1.6](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/nprogress/v0.1.6.js)
21. font-awesome [v4.2.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/stylesheets/font-awesome/v4.2.0.css)
22. zebra_datepicker [v1.8.9](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/zebra_datepicker/v1.8.9.js)
23. draggabilly [v1.1.1](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/draggabilly/v1.1.1.js)
24. imagesloaded [v3.1.8](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/imagesloaded/v3.1.8.js)
25. masonry [v3.2.2](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/masonry/v3.2.2.js)
26. responsiveCarousel [v1.2.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/responsiveCarousel/v1.2.0.js)
27. responsiveslides [v1.54](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/responsiveslides/v1.54.js)
28. isotope [v2.0.1](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/isotope/v2.0.1.js)
29. photoswipe [v4.0.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/photoswipe/v4.0.0.js), [v4.0.2](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/photoswipe/v4.0.2.js)
30. waypoints [v3.0.1](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/waypoints/v3.0.1/)
31. bootstrap-hover-dropdown [v2.1.3](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/bootstrap-hover-dropdown/v2.1.3.js)
32. jquery.magnific-popup [v1.0.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.magnific-popup/v1.0.0.js)
33. [jquery.resizeimagetoparent](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.resizeimagetoparent.js)
34. jquery-migrate [v1.2.1](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery-migrate/v1.2.1.js)
35. [jquery.mCustomScrollbar](https://github.com/yoolk/assets-rails/tree/jquery.mCustomScrollbar/app/assets/javascripts/jquery.mCustomScrollbar)
36. mobile-detect [v1.2.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/mobile-detect/v1.2.0/)
37. js-cookie [v2.0.2](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/js-cookie/v2.0.2.js)
38. jquery-ui [v1.11.4](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery-ui/v1.11.4.js)
39. jquery.matchHeight [v0.6.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.matchHeight/v0.6.0.js)
40. jquery.elevatezoom [v3.0.8](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.elevatezoom/v3.0.8.js)
42. wow [v1.1.2](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/wow/v1.1.2.js)
43. jquery.minimalect [v0.9.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.minimalect/v0.9.0.js), [v0.9.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/stylesheets/jquery.minimalect/v0.9.0.scss)
44. javascript-equal-height-responsive-rows[v1.0.0](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/javascript-equal-height-responsive-rows/v1.0.0.js)
45. jquery.cycle2 [v2.1.6](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/jquery.cycle2/v2.1.6.js)
46. smartcrop.js [v0.0.1](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/smartcrop/v0.0.1.js)
47. evol.colorpicker [v3.2.3](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/evol.colorpicker/v3.2.3.js), [v3.2.3](https://github.com/yoolk/assets-rails/blob/master/app/assets/stylesheets/evol.colorpicker/v3.2.3.scss)
48. jquery.fileupload
49. requirejs [v2.1.22](https://github.com/yoolk/assets-rails/blob/master/app/assets/javascripts/requirejs/v2.1.22.js)

## Authors

* [Chamnap Chhorn](https://github.com/chamnap)
