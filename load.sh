#!/bin/bash

cd scripts/mysql

mysql -ukohs100 -pJh3029516 -Dtpce < "0_delete_table.sql"
USED_SPACE=`du -h /var/lib/mysql/tpce/ | awk '{ print $1 }'`
echo "Cleared DB. Disk usage: $USED_SPACE"

service mariadb restart

sync
echo 3 > /proc/sys/vm/drop_caches
sync

read -p "Load ready. Started blktrace and press enter to continue."

mysql -ukohs100 -pJh3029516 -Dtpce < "1_create_table.sql"
echo "Created DB."

mysql -ukohs100 -pJh3029516 -Dtpce < "2_load_data.sql"
USED_SPACE=`du -h /var/lib/mysql/tpce/ | awk '{ print $1 }'`
echo "Loading done. DB Size: $USED_SPACE"

mysql -ukohs100 -pJh3029516 -Dtpce < "3_create_index.sql"
USED_SPACE=`du -h /var/lib/mysql/tpce/ | awk '{ print $1 }'`
echo "Indexing done. DB Size: $USED_SPACE"

mysql -ukohs100 -pJh3029516 -Dtpce < "4_create_fk.sql"
USED_SPACE=`du -h /var/lib/mysql/tpce/ | awk '{ print $1 }'`
echo "FKing done. DB Size: $USED_SPACE"

mysql -ukohs100 -pJh3029516 -Dtpce < "5_create_sequence.sql"
USED_SPACE=`du -h /var/lib/mysql/tpce/ | awk '{ print $1 }'`
echo "Sequencing done. DB Size: $USED_SPACE"

sync
echo 3 > /proc/sys/vm/drop_caches
sync

echo "Sync done. Stop blktrace."