################################################################################
#
# dmenu
#
################################################################################

DMENU_VERSION = 5.3.0
DMENU_SITE_METHOD = local
DMENU_SITE = $(TOPDIR)/package/dmenu/src
DMENU_LICENSE = MIT
DMENU_LICENSE_FILES = LICENSE

DMENU_DEPENDENCIES += xlib_libX11
DMENU_DEPENDENCIES += freetype
DMENU_DEPENDENCIES += xlib_libXft

DMENU_CFLAGS = $(TARGET_CFLAGS)

define DMENU_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) CFLAGS="$(DMENU_CFLAGS)"
endef

define DMENU_INSTALL_TARGET_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) CFLAGS="$(DMENU_CFLAGS)" DESTDIR=$(TARGET_DIR) install
endef
	
$(eval $(generic-package))
