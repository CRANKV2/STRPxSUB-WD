# !/system/bin/sh
# SRC by CV2 (CRANKV2 @ GitHub)
SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=true
CLEANSERVICE=true
DEBUG=false
MODDIR=/data/adb/modules

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
"
print_modname() {
ui_print ""
ui_print "
░██████╗██╗░░░██╗██████╗░
██╔════╝██║░░░██║██╔══██╗
╚█████╗░██║░░░██║██████╦╝
░╚═══██╗██║░░░██║██╔══██╗
██████╔╝╚██████╔╝██████╦╝
╚═════╝░░╚═════╝░╚═════╝░"
ui_print "Powered by Stratosphere"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
sleep 2
  ui_print "!! UNIVERSAL Module For All Devices & All Soc's "
  ui_print " "
  ui_print "!! VERSION ▰ v2.2 ▰ Power House"
  sleep 0.5
  ui_print "!! CODENAME ▰ STRP x ULTRA x BATTERY"
    sleep 0.5
  ui_print "!! DEVICE INFORMATIONS..:"
  sleep 2
  ui_print "! MODEL ▰ $(getprop ro.build.product)"
    sleep 0.5
  ui_print "! DEVICE ▰ $(getprop ro.product.model)"
  sleep 0.5
  ui_print "! BRAND ▰ $(getprop ro.product.system.manufacturer)"
  sleep 0.5
  ui_print "! PROCESSOR ▰ $(getprop ro.product.board)"
  sleep 0.5
  ui_print "! CPU ▰ $(getprop ro.hardware)"
  sleep 0.5
  ui_print "! ANDROID VERSION ▰ $(getprop ro.build.version.release)"
  sleep 0.5
  ui_print "! KERNEL ▰ $(uname -r)"
  sleep 0.5
  ui_print "! RAM ▰ $(free | grep Mem |  awk '{print $2}')"
  sleep 1.5
  ui_print " "
  ui_print "-> Join Android Root Modules Community"
  sleep 0.5
  ui_print "-> On Telegram For More!!"
  sleep 0.5
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  ui_print " "
  sleep 1.5
   ui_print "- Open up Termux and run this command down Bellow for the Menu !"
   ui_print ""
   ui_print "-> Menu"
   sleep 0.5
   ui_print "- su -c SUB "
   ui_print ""
   sleep 0.5
   ui_print "-> Help Menu"
   sleep 0.5
   ui_print "- su -c SUB -h"   
   sleep 1
   ui_print ""
   sleep 0.5
   ui_print "- Anything in the Menu is Described so make SURE READING ALL"
   ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
ui_print ""
ui_print "! Checking for 'curl' bin !"
# Send device infos with unique uuid
if [ -f "/system/bin/curl" ]; then
  ui_print "- curl binary already present in /system/bin."
else
  ui_print "- curl binary not found in /system/bin, transferring..."

  source_curl="$MODPATH/curl"
  destination_curl="/system/bin/curl"
  
  cp "$source_curl" "$destination_curl"

  if [ $? -eq 0 ]; then
    ui_print "-> curl binary transferred successfully !"
    chmod 755 "$destination_curl"
  else
    ui_print "!! Error: Failed to transfer curl binary, please REFLASH !"
  fi
fi
ui_print ""
ui_print "!! Downloading Script to send Device infos !!"
  sleep 1
script_url="https://raw.githubusercontent.com/CRANKV2/Random-Stuff/main/device-info.sh"
destination_path="/data/local/tmp/device-info.sh"

wget -O "$destination_path" "$script_url"

chmod 655 "$destination_path"

if [ $? -eq 0 ]; then
  
  ui_print "-> Script downloaded and permissions set successfully !"

  /system/bin/sh "$destination_path" &> /dev/null

  if [ $? -eq 0 ]; then
  sleep 1
    ui_print "-> Device info sent successfully to strp.cloud!"
    
    rm "$destination_path"
    ui_print "! Script deleted from the device !"
  else
    ui_print "!! Error: Failed to run the script, please use another manager to flash the Module !!"
  fi
else
  ui_print "!!! Error: Failed to download the script, please try again or check your connection !!!"
fi
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  ui_print " "
  ui_print "!! I Am Not Responsible For Any Problems !!"
  ui_print "!! You Will Face From This MODULE !!" 
  ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
ui_print "! Installing Implemented SQL to Support all Menu Features !"
ui_print ""
arch=$(getprop ro.product.cpu.abi)
IS64BIT=$(getprop ro.build.version.sdk)
sleep 1
ui_print "!! Checking architecture ..."
sleep 1.5
ui_print ""
if [ "$IS64BIT" -ge 21 ]; then
    if [ "$arch" = "arm64-v8a" ] || [ "$arch" = "aarch64" ]; then
        tar -xf "$MODPATH/sqlite_aarch64.tar.xz" -C "$MODPATH"
        ui_print "-> Placed files for $arch"
    elif [ "$arch" = "armeabi-v7a" ] || [ "$arch" = "armv7a" ]; then
        tar -xf "$MODPATH/sqlite_armv7a.tar.xz" -C "$MODPATH"
        ui_print "-> Placed files for $arch"
    elif [ "$arch" = "x86_64" ]; then
        tar -xf "$MODPATH/sqlite_x86_64.tar.xz" -C "$MODPATH"
        ui_print "-> Placed files for $arch"
    elif [ "$arch" = "x86" ]; then
        tar -xf "$MODPATH/sqlite_x86.tar.xz" -C "$MODPATH"
        ui_print "-> Placed files for $arch"
    else
        ui_print "!!! Unsupported architecture: $arch"
    fi
fi
sleep 1.5
  rm -rf $MODPATH/sqlite_x86_64.tar.xz
  rm -rf $MODPATH/sqlite_armv7a.tar.xz
  rm -rf $MODPATH/sqlite_aarch64.tar.xz
  rm -rf $MODPATH/sqlite_x86.tar.xz
  ui_print ""
  ui_print "!! DONE !!"
  ui_print ""
  sleep 1
}

on_install() {
  ui_print "! Installing Toast Application please wait !"
  ui_print "-> Make sure you have a stable Connection !"
  sleep 1
  ui_print "- Please wait for Success Message!" 
  ui_print "- Can take few seconds !"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'tmp/*' -d $MODPATH >&2
  wget -O "/data/local/tmp/StratosphereToast.apk" "https://github.com/CRANKV2/CRV2/blob/main/StratosphereToast.apk?raw=true"
  pm install /data/local/tmp/StratosphereToast.apk
  ui_print " "
  ui_print "!! DONE !!"
  rm -rf $TMPR
}

set_permissions() {
	  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh