
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = '43afe3506c042ac664e729d284482e6d42c5a7cd'

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-nmilligan-cu.git'
LDD_METHOD = git


define LDD_INSTALL_TARGET_CMDS
	mkdir -p $(BR2_ROOTFS_OVERLAY)/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(BR2_ROOTFS_OVERLAY)/bin/scull_load
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(BR2_ROOTFS_OVERLAY)/bin/scull_unload
	
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(BR2_ROOTFS_OVERLAY)/bin/module_load
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(BR2_ROOTFS_OVERLAY)/bin/module_unload
endef

$(eval $(generic-package))
