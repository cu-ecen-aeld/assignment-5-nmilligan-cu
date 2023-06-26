
##############################################################
#
# AESDChar Driver
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
AESDCHAR_VERSION = '18ee464d3abd5e1eaedc836827cb5bdc48e1f903'

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-nmilligan-cu.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))

define AESDCHAR_INSTALL_TARGET_CMDS
	mkdir -p $(BR2_ROOTFS_OVERLAY)/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(BR2_ROOTFS_OVERLAY)/bin/aesdchar_load
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(BR2_ROOTFS_OVERLAY)/bin/aesdchar_unload
endef

$(eval $(generic-package))
