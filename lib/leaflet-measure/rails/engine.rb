module Leaflet
  module Measure
    module Rails
      class Engine < ::Rails::Engine
        initializer 'leaflet-measure.precompile' do |app|
          app.config.assets.precompile += %w( leaflet-measure.js )
          app.config.assets.precompile += %w( cancel.png cancel_@2X.png check.png check_@2X.png focus.png focus_@2x.png rulers.png rulers_@2x.png start.png start_@2x.png trash.png trash_@2x.png )
        end
      end
    end
  end
end