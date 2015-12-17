#!/bin/bash

DIR=`dirname "$0"`
DATADIR=/var/oc/mysql

if [ ! -f $DATADIR/ibdata1 ]; then

    mysql_install_db --user=mysql --datadir=$DATADIR
    ret=$?

    if [ $ret -ne 0 ] ; then
		return $ret
	fi

	chown mysql:mysql "$DATADIR"
    chmod 0755 "$DATADIR"

    echo "Will prepare DB schema..."
    /usr/bin/mysqld_safe --datadir=$DATADIR & 

    sleep 5

    cat $DIR/setupdb.sql | mysql

    echo "Will restart DB on foreground"
    /usr/bin/mysqladmin shutdown
fi

/usr/bin/mysqld_safe  --datadir=$DATADIR