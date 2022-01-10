$LOAD_PATH << File.expand_path('.')

require 'roda'
require 'tilt/erb'
require 'models'
require 'base58'
require 'clogger'
require 'rack/deflater'

class PerilousWilds < Roda
  plugin :default_headers,
    'Content-Type'=>'text/html',
    'Strict-Transport-Security'=>'max-age=16070400;',
    'X-Content-Type-Options'=>'nosniff',
    'X-Frame-Options'=>'deny',
    'X-XSS-Protection'=>'1; mode=block'
  plugin :render
  plugin :public
  plugin :head
  plugin :assets, css: 'style.scss'
  compile_assets

  use Rack::Deflater

  route do |r|
    r.public
    r.assets #unless ENV['RACK_ENV'] == 'production'

    @random = if r.params['seed']
                Random.new(Base58.decode(r.params['seed']))
              else
                Random.new(Random.new_seed)
              end

    r.root do
      r.redirect '/welcome'
    end

    r.is 'welcome' do
      view(:welcome)
    end

    r.is 'region' do
      @region = Region.new(@random).roll
      view(:region)
    end

    r.is 'place' do
      @place = Place.new(@random).roll
      view(:place)
    end

    r.is 'item' do
      @item = Item.new(@random).roll
      view(:item)
    end

    r.is 'discovery' do
      @discovery = Discovery.new(@random).roll
      view(:discovery)
    end

    r.is 'danger' do
      @danger = Danger.new(@random).roll
      view(:danger)
    end

    r.is 'creature' do
      @creature = Creature.new(@random).roll
      view(:creature)
    end

    r.is 'steading' do
      @steading = Steading.new(@random).roll
      view(:steading)
    end

    r.is 'dungeon' do
      @dungeon = Dungeon.new(@random).roll
      view(:dungeon)
    end

    r.is 'adventure' do
      @adventure = Adventure.new(@random).roll
      view(:adventure)
    end

    r.is 'character' do
      @character = Character.new.roll
      view(:character)
    end
  end
end
