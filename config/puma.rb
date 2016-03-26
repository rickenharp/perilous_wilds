workers 2
threads 1, 6
environment 'production'
bind 'unix:////tmp/puma.perilous-wilds.sock'
directory '/opt/www/perilous-wilds.geekwire.net/current'
pidfile "/opt/www/perilous-wilds.geekwire.net/current/tmp/puma/pid"
state_path "/opt/www/perilous-wilds.geekwire.net/current/tmp/puma/state"
activate_control_app
