$LOAD_PATH << File.expand_path('.')

require 'spec_helper'
require 'awesome_print'
require 'perilous_wilds'
require 'capybara/rspec'

RSpec.configure do |c|
  c.include Rack::Test::Methods
end

Capybara.configure do |config|
  config.app = PerilousWilds.app
end

def app
  PerilousWilds.app
end
