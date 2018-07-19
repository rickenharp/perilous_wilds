$LOAD_PATH << File.expand_path('.')

require 'roda'
require 'tilt/sassc'
require 'tilt/erb'
require 'models'
require 'base58'


class PerilousWilds < Roda
  plugin :render
  plugin :head
  plugin :assets, css: 'style.scss'
  compile_assets

  route do |r|
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
