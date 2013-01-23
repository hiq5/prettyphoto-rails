prettyphoto-rails
=================

A gem to easily integrate [prettyPhoto](http://www.no-margin-for-errors.com/projects/prettyPhoto/) with the rails 3.1+ asset pipeline.

Currently this gem birngs support for prettyPhoto **v3.1.5**.

## Installation

First add the following lines to your applications `Gemfile`:

``` ruby
gem 'jquery-rails'
gem 'prettyphoto-rails'
```

Run `bundle install`.

Add the following lines to `app/assets/javascripts/application.js`:

``` javascript
//= require jquery
//= require prettyphoto-rails
```

Finalize the setup by adding these lines to `app/assets/stylesheets/application.css`:

``` css
/*
 *= require_self
 *= require prettyphoto-rails 
 */
```

## Usage

Please refer to [http://www.no-margin-for-errors.com/projects/prettyPhoto/](http://www.no-margin-for-errors.com/projects/prettyPhoto/)
for all the details on how to use. 

### Credits

* prettyPhoto is (c) Copyright Stephane Caron
* This gem is maintained by [@christian_mager](https://www.twitter.com/#!/christian_mager)

