################################################################################
#
# dmenu
#
################################################################################

DMENU_VERSION = 5.3.0
DMENU_SITE = https://tools.suckless.org/dmenu/
DMENU_LICENSE = MIT
DMENU_LICENSE_FILES = LICENSE

DMENU_CFLAGS = $(TARGET_CFLAGS)

$(MAKE) $(TARGET_CONFIGURE_OPTS) \
	-C $(@D) CFLAGS="$(DMENU_CFLAGS)" DESTDIR=$(TARGET_DIR) install
	
$(eval $(generic-package))
