require 'roda'
require 'tilt/erb'
require 'faker/fantasy'

class PerilousWilds < Roda
  plugin :render

  route do |r|
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
