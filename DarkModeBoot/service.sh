#!/system/bin/sh
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done
sleep 5
settings put secure ui_night_mode 2
service call activity 18 i32 1
