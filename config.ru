require './perilous_wilds'
require 'rack/ssl-enforcer'

use Rack::SslEnforcer, except_hosts: ['localhost', '127.0.0.1']

run PerilousWilds.freeze.app
