#!/bin/sh

echo "> Removing log files, please wait..."
sleep 2

# تحديد المسارات التي سيتم تنظيفها
for path in /home/root /home/root/logs /media/hdd /media/usb /media/mmc /tmp; do
    if [ -d "$path" ]; then
        echo "> Cleaning: $path"
        rm -rf "$path"/*.log > /dev/null 2>&1
    fi
done

echo "> All done! Your device is clean."
sleep 2
