#! /bin/sh
PUMA_CONFIG_FILE=/var/www/admin/current/config/puma.rb
PUMA_PID_FILE=/var/www/admin/current/shared/tmp/pids/puma.pid
PUMA_SOCKET=/var/www/admin/current/shared/tmp/sockets/puma.sock

# check if puma process is running
puma_is_running() {
  if [ -e $PUMA_SOCKET ] ; then
    if [ -r $PUMA_PID_FILE ] ; then
       if ps -p `cat $PUMA_PID_FILE` > /dev/null; then
        return 0
      else
        echo "No puma process found"
      fi
    else
      echo "No puma pid file found"
    fi
  else
    echo "No puma socket found"
  fi

  return 1
}

case "$1" in
  start)
    echo "Starting puma..."
      if [ -e $PUMA_SOCKET  ] ; then # if socket exists
        rm -f $PUMA_SOCKET
        echo "removed $PUMA_SOCKET"
      fi
      if [ -e $PUMA_CONFIG_FILE ] ; then
        echo "config"
        bundle exec puma -C $PUMA_CONFIG_FILE
      else
        echo "socket"
        bundle exec puma --daemon --bind unix://$PUMA_SOCKET --pidfile $PUMA_PID_FILE
      fi

    echo "done"
    ;;

  stop)
    echo "Stopping puma..."
      kill -s SIGTERM `cat $PUMA_PID_FILE`
      rm -f $PUMA_PID_FILE
      rm -f $PUMA_SOCKET

    echo "done"
    ;;

  restart)
    if puma_is_running ; then
      echo "Hot-restarting puma..."
      kill -s SIGUSR2 `cat $PUMA_PID_FILE`

      echo "Doublechecking the process restart..."
      sleep 5
      if puma_is_running ; then
        echo "done"
        exit 0
      else
        echo "Puma restart failed :/"
        exit 1
      fi
    fi

    echo "Trying cold reboot"
    bin/puma.sh start
    ;;

  *)
    echo "Usage: script/puma.sh {start|stop|restart}" >&2
    ;;
esac
