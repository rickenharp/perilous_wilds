require './perilous_wilds'
require 'clogger'
require 'rack/ssl-enforcer'

use Rack::SslEnforcer, except_hosts: ['localhost', '127.0.0.1']

use Clogger,
:format => :Combined,
:logger => $stdout,
:reentrant => true
run PerilousWilds.freeze.app
