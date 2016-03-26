workers 2
threads 1, 6
bind 'unix:////tmp/puma.perilous-wilds.sock'
directory '/opt/www/perilous-wilds.geekwire.net/current'
pidfile "/opt/www/perilous-wilds.geekwire.net/tmp/pids/puma.pid"
state_path "/opt/www/perilous-wilds.geekwire.net/tmp/puma/state"
