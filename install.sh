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
	ui_print "
┏━━━┳━━━━┳━━━┳━━━┓
┃┏━┓┃┏┓┏┓┃┏━┓┃┏━┓┃
┃┗━━╋┛┃┃┗┫┗━┛┃┗━┛┃
┗━━┓┃╋┃┃╋┃┏┓┏┫┏━━┛
┃┗━┛┃╋┃┃╋┃┃┃┗┫┃
┗━━━┛╋┗┛╋┗┛┗━┻┛
┏┓╋┏┳┓╋┏━━━━┳━━━┳━━━┓
┃┃╋┃┃┃╋┃┏┓┏┓┃┏━┓┃┏━┓┃
┃┃╋┃┃┃╋┗┛┃┃┗┫┗━┛┃┃╋┃┃
┃┃╋┃┃┃╋┏┓┃┃╋┃┏┓┏┫┗━┛┃
┃┗━┛┃┗━┛┃┃┃╋┃┃┃┗┫┏━┓┃
┗━━━┻━━━┛┗┛╋┗┛┗━┻┛╋┗┛
┏━━┓┏━━━┳━━━━┳━━━━┳━━━┳━━━┳┓╋╋┏┓
┃┏┓┃┃┏━┓┃┏┓┏┓┃┏┓┏┓┃┏━━┫┏━┓┃┗┓┏┛┃
┃┗┛┗┫┃╋┃┣┛┃┃┗┻┛┃┃┗┫┗━━┫┗━┛┣┓┗┛┏┛
┃┏━┓┃┗━┛┃╋┃┃╋╋╋┃┃╋┃┏━━┫┏┓┏┛┗┓┏┛
┃┗━┛┃┏━┓┃╋┃┃╋╋╋┃┃╋┃┗━━┫┃┃┗┓╋┃┃
┗━━━┻┛╋┗┛╋┗┛╋╋╋┗┛╋┗━━━┻┛┗━┛╋┗┛"
ui_print "Powered by Stratosphere"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
  ui_print "▌UNIVERSAL Module For All Devices & All Soc's ▌"
  ui_print " "
  ui_print "▌VERSION ▰ 0.4"
  ui_print "▌CODENAME ▰ STRP x ULTRA x BATTERY"
  ui_print "▌DEVICE INFORMATIONS..:"
  sleep 2
  ui_print "▌MODEL ▰ $(getprop ro.build.product)"
  ui_print "▌DEVICE ▰ $(getprop ro.product.model)"
  ui_print "▌BRAND ▰ $(getprop ro.product.system.manufacturer)"
  ui_print "▌PROCESSOR ▰ $(getprop ro.product.board)"
  ui_print "▌CPU ▰ $(getprop ro.hardware)"
  ui_print "▌ANDROID VERSION ▰ $(getprop ro.build.version.release)"
  ui_print "▌KERNEL ▰ $(uname -r)"
  ui_print "▌RAM ▰ $(free | grep Mem |  awk '{print $2}')"
  sleep 2
  ui_print " "
  ui_print "▌Join Android Root Modules Community"
  ui_print "▌On Telegram For More!!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  ui_print " "
  sleep 2
  ui_print "▌Ultra Battery Mode Will Execute Itself After Reboot!"
   ui_print ""
   ui_print "▌Just Wait For Toast Popping Up!"
  sleep 0.5
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 4
ui_print " "
ui_print "╔▌Checking which ARM ur device has..."
sleep 2
ui_print "║"
ui_print "╠▌Your ARM Is ▰ $(getprop ro.product.cpu.abi)"
sleep 1
ui_print "║"
ui_print "╠▌Extracting and Moving files for ▰ $(getprop ro.product.cpu.abi)"
[[ "$IS64BIT" == "true" ]] && tar -xf "$MODPATH/sub64.tar.xz" -C "$MODPATH" || tar -xf "$MODPATH/sub32.tar.xz" -C "$MODPATH"
sleep 2.5
ui_print "║"
ui_print "╚══⇒ DONE .. All Scripts Placed Successfully!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
  ui_print " "
  ui_print "▌I Am Not Responsible For Any Problems "
  ui_print "▌You Will Face From This MODULE!" 
  ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
ui_print ""
}

on_install() {
  ui_print "▌Installing STRP x ULTRA x BATTERY ▌"
  ui_print " "
  sleep 1
  ui_print "▌Please wait for Success Message!" 
  ui_print "▌Can take few seconds!"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'tmp/*' -d $MODPATH >&2
  wget -O "/data/local/tmp/StratosphereToast.apk" "https://github.com/CRANKV2/CRV2/blob/main/StratosphereToast.apk?raw=true"
  pm install /data/local/tmp/StratosphereToast.apk
  ui_print " "
  ui_print "▌DONE ▌"
  rm -rf $TMPR
}

set_permissions() {
	  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh