bind "unix:///var/www/project/shared/tmp/sockets/puma.sock"
pidfile "/var/www/project/shared/tmp/pids/puma.pid"

threads 1, 1
workers 10

environment "production"

prune_bundler

directory '/var/www/project/current'
