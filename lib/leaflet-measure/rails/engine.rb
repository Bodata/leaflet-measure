module Leaflet
  module Measure
    module Rails
      class Engine < ::Rails::Engine
        initializer 'leaflet-measure.precompile' do |app|
          app.config.assets.precompile += %w( leaflet-measure.js )
        end
      end
    end
  end
end