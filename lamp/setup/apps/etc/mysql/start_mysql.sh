#!/bin/bash

# For a general query log, include the following:
#   --general-log-file=$VAR_DIR/log/mysqld-query.log
#   --general-log=1

exec /usr/sbin/mysqld \
   --defaults-file=$APPS_DIR/etc/mysql/my.cnf \
   --user ${USER:-mysql} \
   --datadir=$VAR_DIR/mysql \
   --socket=$VAR_DIR/run/mysqld.sock \
   --pid-file=$VAR_DIR/run/mysqld.pid \
   --log-error=$VAR_DIR/log/mysqld-error.log \
   --plugin-dir=/usr/lib/var/mysql/plugin
