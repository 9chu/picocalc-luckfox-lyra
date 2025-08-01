################################################################################
#
# example-package
#
################################################################################

DWMBLOCKS_VERSION = 0.1.0
DWMBLOCKS_SITE_METHOD = local
DWMBLOCKS_SITE = $(TOPDIR)/package/dwmblocks/src
DWMBLOCKS_LICENSE = GPLv2
DWMBLOCKS_LICENSE_FILES = LICENSE

DWMBLOCKS_DEPENDENCIES += xlib_libX11
DWMBLOCKS_DEPENDENCIES += freetype
DWMBLOCKS_DEPENDENCIES += xlib_libXft

DWMBLOCKS_CFLAGS = $(TARGET_CFLAGS)

define DWMBLOCKS_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) CFLAGS="$(DWM_CFLAGS)"
endef

define DWMBLOCKS_INSTALL_TARGET_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) CFLAGS="$(DWM_CFLAGS)" DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
