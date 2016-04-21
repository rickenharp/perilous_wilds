$LOAD_PATH << File.expand_path('.')

require 'roda'
require 'tilt/erb'
require 'models'
require 'base58'

class PerilousWilds < Roda
  plugin :render
  plugin :assets, css: 'style.scss'
  compile_assets

  route do |r|
    r.assets unless ENV['RACK_ENV'] == 'production'

    if r.params['seed']
      @seed = Base58.decode(r.params['seed'])
    else
      @seed = Random.new_seed
    end
    Kernel.srand(@seed)

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

    r.is 'steading' do
      @steading = Steading.new
      view(:steading)
    end
  end
end
