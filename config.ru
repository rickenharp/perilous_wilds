require './perilous_wilds'
require 'clogger'

use Clogger,
:format => :Combined,
:logger => $stdout,
:reentrant => true
run PerilousWilds.freeze.app
