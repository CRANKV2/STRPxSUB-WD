#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

wait_until_login() {

while [[ `getprop sys.boot_completed` -ne 1 && -d "/sdcard" ]]
    do
    sleep 2
done

local test_file="/sdcard/.PERMISSION_TEST"
    touch "$test_file"
        while [ ! -f "$test_file" ]; do
    touch "$test_file"
    sleep 2
done

    rm "$test_file"
}
wait_until_login

sleep 2

setprop persist.strp.sub.battery 0
#run handler
#LOGS = /data/adb/modules/STRPxULTRAxBATTERY
sleep 5
cpu_gov_lock_screen_handler &
cpu_freq_on_lock_handler &
data_wifi_on_lock_handler &
auto_sub &
module_infos_shell &

sleep 5
am start -a android.intent.action.MAIN -e toasttext "𝙎𝙏𝙍𝙋 𝙎𝙐𝘽 𝙎𝙘𝙧𝙞𝙥𝙩𝙨 𝘾𝙤𝙢𝙥𝙡𝙚𝙩𝙚𝙡𝙮 𝙇𝙤𝙖𝙙𝙚𝙙! 𝙀𝙣𝙟𝙤𝙮!" -n bellavita.toast/.MainActivity
sleep 5

