#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}


#Wait till Boot bevore Execution
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

#CPU Tweaks bevore executing Script itself...
write /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor interactive
write /sys/devices/system/cpu/cpufreq/performance/go_hispeed_load 50
write /sys/devices/system/cpu/cpufreq/performance/above_hispeed_delay 0
write /sys/devices/system/cpu/cpufreq/performance/boost 0
write /sys/module/msm_performance/parameters/touchboost 0
write /sys/devices/system/cpu/cpufreq/performance/max_freq_hysteresis 1
write /sys/devices/system/cpu/cpufreq/performance/align_windows 1
write /sys/devices/soc/1c00000.qcom,kgsl-3d0/devfreq/1c00000.qcom,kgsl-3d0/governor msm-adreno-tz
write /sys/class/kgsl/kgsl-3d0/devfreq/governor msm-adreno-tz
write /sys/module/adreno_idler/parameters/adreno_idler_active 1
write /sys/module/lazyplug/parameters/nr_possible_cores 8
write /dev/cpuset/foreground/cpus 0-3,4-7
write /dev/cpuset/foreground/boost/cpus 3-7
write /dev/cpuset/top-app/cpus 0-7

# ➜ FIX DRAIN/gms
su -c pm disable com.google.android.gms/.chimera.GmsIntentOperationService

#Execute UltraBatteryScript
#LOG = .STRP/ULTRA-BATTERY.log
sleep 15
BAT