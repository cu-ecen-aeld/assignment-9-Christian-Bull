
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = c999ce66e9b5f029e3d4160b0e82939e47ae04bf
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Christian-Bull.git
LDD_SITE_METHOD = git
# LDD_GIT_SUBMODULES = YES

define LDD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

$(eval $(generic-package))
