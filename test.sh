service mariadb restart

sync
echo 3 > /proc/sys/vm/drop_caches
sync

read -p "Run ready. Start blktrace and press enter to continue."

bin/EGenSimpleTest \
    -c 2000 -a 2000 -f 200 -d 5 -l 200 -e \
    ./flat_in -D tpce -U kohs100 -P Jh3029516 -t 600 -r 10 -u 32

sync
echo 3 > /proc/sys/vm/drop_caches
sync

echo "Run done. Stop blktrace."