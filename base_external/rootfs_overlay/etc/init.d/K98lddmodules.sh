#!/bin/sh

# shutdown script to ldd module

##############################################################
#
# scull
#
# https://github.com/cu-ecen-aeld/ldd3/blob/master/scull/scull_unload
#
##############################################################

module="scull"
device="scull"

# invoke rmmod with all arguments we got
rmmod $module $* || exit 1

# Remove stale nodes

rm -f /dev/${device} /dev/${device}[0-3] 
rm -f /dev/${device}priv
rm -f /dev/${device}pipe /dev/${device}pipe[0-3]
rm -f /dev/${device}single
rm -f /dev/${device}uid
rm -f /dev/${device}wuid


##############################################################
#
# modules
#
# https://github.com/cu-ecen-aeld/ldd3/blob/master/misc-modules/module_unload
#
##############################################################

module=$1
device=$1

if [ $# -ne 1 ]; then
	echo "Wrong number of arguments"
	echo "usage: $0 module_name"
	echo "Will unload the module specified by module_name and remove assocaited device"
	exit 1
fi

# invoke rmmod with all arguments we got
rmmod $module || exit 1

# Remove stale nodes

rm -f /dev/${device}

##############################################################
#
# hello module
#
##############################################################
rmmod hello 2>/dev/null
