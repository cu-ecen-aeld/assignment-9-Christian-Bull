
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 29278d4aad6a733f8c02f1cbb04b29cee8f0d6ae
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Christian-Bull.git
LDD_SITE_METHOD = git
# LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))
