require 'roda'
require 'tilt/erb'
require 'tilt/sass'
require 'faker/fantasy'

class PerilousWilds < Roda
  plugin :render
  plugin :assets, :css => 'style.scss'
  compile_assets

  route do |r|
    r.assets # unless ENV['RACK_ENV'] == 'production'

    r.root do
      r.redirect '/welcome'
    end

    r.is 'welcome' do
      view(:welcome)
    end

    r.is 'region' do
      view(:region)
    end

    r.is 'place' do
      view(:place)
    end
  end
end
