$LOAD_PATH << File.expand_path('.')

require 'roda'
require 'tilt/erb'
require 'models'

class PerilousWilds < Roda
  plugin :render
  plugin :assets, css: 'style.scss'
  compile_assets

  route do |r|
    r.assets unless ENV['RACK_ENV'] == 'production'

    @seed = r.params['seed'] || Random.new_seed
    Kernel.srand(@seed.to_i)

    r.root do
      r.redirect '/welcome'
    end

    r.is 'welcome' do
      view(:welcome)
    end

    r.is 'region' do
      @region = Region.new
      view(:region)
    end

    r.is 'place' do
      @place = Place.new
      view(:place)
    end

    r.is 'item' do
      @item = Item.new
      view(:item)
    end

    r.is 'discovery' do
      @discovery = Discovery.new
      view(:discovery)
    end

    r.is 'creature' do
      @creature = Creature.new
      view(:creature)
    end
  end
end
