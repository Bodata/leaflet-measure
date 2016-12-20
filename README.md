# Leaflet::Measure

This is a gem to add the measure plugin for leaflet to a rails project.

It does not have any additions, just makes the code available to the assets pipeline.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'leaflet-measure'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install leaflet-measure

## Usage

This is what i did in my code:

map.html.haml
<pre>
#big_map
=javascript_tag do
  =raw "var lat =#{@type_logger.default_lat};"
  =raw "var lng =#{@type_logger.default_lng};"
  =raw "var zoom = 7;"
  = render :partial => 'maps/loggers_farms.js'
</pre>

application.css
<pre>#big_map { height: 800px; }
</pre>

/app/views/maps/_logger_farms.js
<pre>
  var map = L.map('big_map').setView([lat, lng], zoom);

  L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
        maxZoom: 18
  }).addTo(map);
  var measureControl = L.control.measure({localization:'nl', primaryLengthUnit:'meters', secondaryLengthUnit:'kilometers', primaryAreaUnit: "hectares"});
  measureControl.addTo(map);
</pre>


## Contributing

I don't know if i have much time to follow up !

Bug reports and pull requests are welcome on GitHub at https://github.com/bodata/leaflet-measure.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

