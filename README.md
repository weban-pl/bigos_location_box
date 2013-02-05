## BigosLocationBox
Widget with contact form.

## Installation

BigosLocationBox works with Rails 3.1 onwards. You can add it to your Gemfile with:

```ruby
gem "bigos_location_box", :git=>"git://github.com/weban/bigos_location_box.git"

```
Gems "jquery-rails" and "bigos_settings" are required

Run the bundle command to install it.

After you install BigosLocationBox and add it to your Gemfile, you need to run the generator:

```console
rails generate bigos_location_box:install
```

You have to add this line in layout, where widget will be displaying:

```ruby
  <%= javascript_include_tag "http://maps.googleapis.com/maps/api/js?sensor=true" %>
```

## Configuration

Please set generated settings

## Customization

You can use to generate view you can overwrite
```console
rails generate bigos_location_box:views
```