#!bin/bash
. ~/.bash_profile
#
unset USERNAME
#
#BFALLAS sube la base datos oracle 11.2
#
$ORACLE_HOME/bin/lsnrctl start
$ORACLE_HOME/bin/dbstart $ORACLE_HOME
#$ORACLE_HOME/bin/emctl start dbconsole
#
sleep 20
#
