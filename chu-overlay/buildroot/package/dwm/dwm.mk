################################################################################
#
# example-package
#
################################################################################

DWM_VERSION = 6.5.0
DWM_SITE = https://dwm.suckless.org/
DWM_LICENSE = MIT
DWM_LICENSE_FILES = LICENSE

DWM_CFLAGS = $(TARGET_CFLAGS)

$(MAKE) $(TARGET_CONFIGURE_OPTS) \
	-C $(@D) CFLAGS="$(DWM_CFLAGS)" DESTDIR=$(TARGET_DIR) install
	
$(eval $(generic-package))
