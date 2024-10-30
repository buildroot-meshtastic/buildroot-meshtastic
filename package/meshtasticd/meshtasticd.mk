################################################################################
#
# meshtasticd
#
################################################################################
# See https://bootlin.com/~thomas/site/buildroot/adding-packages.html#generic-package-tutorial

MESHTASTICD_VERSION = 2.5.8.6485f03
MESHTASTICD_SITE = $(call github,meshtastic,firmware,v$(MESHTASTICD_VERSION))
MESHTASTICD_SITE_METHOD = git
MESHTASTICD_GIT_SUBMODULES = YES
MESHTASTICD_LICENSE = GPL-3.0
MESHTASTICD_LICENSE_FILES = LICENSE
MESHTASTICD_DEPENDENCIES = host-python-platformio

define MESHTASTICD_BUILD_CMDS
	$(HOST_DIR)/usr/bin/platformio run --environment native --project-dir $(MESHTASTICD_SOURCE_DIR)
endef

define MESHTASTICD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(MESHTASTICD_SOURCE_DIR)/.pio/build/native/program \
		$(TARGET_DIR)/usr/bin/meshtasticd
endef

$(eval $(generic-package))
