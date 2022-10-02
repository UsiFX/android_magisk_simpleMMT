#!/sbin/sh
#
# MMT Reborn Installation
# Rewritten by: UsiFX <xprjkts@gmail.com>
#

# Set permissions
set_permissions() { set_perm_recursive "$MODPATH" 0 0 0755 0644 ;}

# Info Print
info_print()
{
	ui_print ""
	awk '{print}' "$MODPATH/common/ntdbanner"
	ui_print ""
}

############
# Main
############

# Change the logic to whatever you want
main()
{
	info_print
	ui_print ""
	ui_print "[~] The simpleMMT Project [~]"
	sleep 1
	ui_print ""
	ui_print "[*] Le'mme Gather Some Info About Your Device 🧐"
	ui_print ""
	sleep 0.5
	ui_print "[DEVICE]: $(getprop ro.product.model)"
	sleep 0.5
	ui_print "[BRAND]: $(getprop ro.product.system.brand)"
	sleep 0.5
	ui_print "[KERNEL]: $(uname -r)"
	sleep 0.5
	ui_print "[SoC]: $(getprop ro.product.board)"
	sleep 0.5

	set_permissions()
	{
		set_perm_recursive "$MODPATH" 0 0 0755 0644
		set_perm_recursive "$MODPATH/system" 0 0 0755 0644
		set_perm_recursive "$MODPATH/system/xbin" 0 0 0755 0644
		set_perm_recursive "$MODPATH/system/bin" 0 0 0755 0755
	}

}

main
