
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = b12410052e4f869d207e3aaac5a7518ab53a3781
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-5013/final-project-Kushagra42.git
AESD_ASSIGNMENTS_SITE_METHOD = git



define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef


#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/uart_write $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/uart_read $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/uart_ReadWrite $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/uart_Rasp_ARD_WR $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/UART2_Temp $(TARGET_DIR)/bin
        $(INSTALL) -m 0755 $(@D)/All_Data_Sync $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/Si7021 $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/Client $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/Server $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/main $(TARGET_DIR)/bin

	
endef


$(eval $(generic-package))
