workers 2
threads 1, 6
bind 'unix:////tmp/puma.perilous-wilds.sock' if ENV['RACK_ENV'] == 'production'
