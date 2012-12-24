#!/bin/bash
SOLR_DIR="/home/www/solr"
JAVA_OPTIONS="-jar start.jar"
LOG="/var/log/solr.log"
JAVA="/usr/local/java/bin/java"
COMMAND="$JAVA $JAVA_OPTIONS"
case $1 in 
start)
echo "Starting Solr"
cd $SOLR_DIR
$JAVA $JAVA_OPTIONS  >> $LOG &
;;

#stop)
#echo "Stopping Solr"
#PID=`ps x | grep '"$COMMAND"' | awk '{print $1;exit};'`
#kill  $PID
#;;
 
#restart)
#echo "Restarting Solr"
#sh $0 stop
#sh $0 start
#;;

*)
#echo "Usage : $0 {start|stop|restart}" >&2
echo "this script can only use command : $0 start" >&2
exit 1
;;

esac
