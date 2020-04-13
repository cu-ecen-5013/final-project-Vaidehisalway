
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = ca3b8fc2a01659e029764fb4c53d7a5776dab16c
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-5013/assignment-3-manual-kernel-and-root-filesystem-build-Vaidehisalway.git
AESD_ASSIGNMENTS_SITE_METHOD = git



define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef


#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/Hello $(TARGET_DIR)/bin
	
endef


$(eval $(generic-package))
