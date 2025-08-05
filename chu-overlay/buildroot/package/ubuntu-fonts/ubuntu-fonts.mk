################################################################################
#
# ubuntu-fonts
#
################################################################################

UBUNTU_FONTS_VERSION = v1.006
UBUNTU_FONTS_SITE = $(call github,canonical,Ubuntu-Sans-Mono-fonts,$(UBUNTU_FONTS_VERSION))
UBUNTU_FONTS_LICENSE = UFL
UBUNTU_FONTS_LICENSE_FILES = LICENSE.txt

define UBUNTU_FONTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/usr/share/fonts/ubuntu-sans-mono
	$(INSTALL) -m 0644 -t $(TARGET_DIR)/usr/share/fonts/ubuntu-sans-mono $(@D)/fonts/ttf/*.ttf
endef

$(eval $(generic-package))
