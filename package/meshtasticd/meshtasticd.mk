################################################################################
#
# meshtasticd
#
################################################################################
# See https://bootlin.com/~thomas/site/buildroot/adding-packages.html#generic-package-tutorial

# TODO Add meshtastic-web to this package
# https://github.com/meshtastic/web

MESHTASTICD_VERSION = 777e34e7066dba42116a503cb36b25f3fc593cc0
MESHTASTICD_SITE = https://github.com/vidplace7/meshtastic-firmware
MESHTASTICD_SITE_METHOD = git
MESHTASTICD_GIT_SUBMODULES = YES
MESHTASTICD_LICENSE = GPL-3.0
MESHTASTICD_LICENSE_FILES = LICENSE
MESHTASTICD_INSTALL_STAGING = YES

# For platformio
MESHTASTICD_DEPENDENCIES = \
	host-openssl \
	host-python3 \
	host-python-click-hack \
	host-python-semantic-version \
	host-python-requests \
	host-python-tabulate \
	host-python-serial \
	host-python-pyelftools

# For meshtasticd
MESHTASTICD_DEPENDENCIES += \
	host-python-platformio \
	libgpiod \
	yaml-cpp \
	bluez5_utils-headers

MESHTASTICD_PLATFORMIO_BUILD_FLAGS = \
	-std=c++17 \
	-I$(STAGING_DIR)/usr/include \
	-L$(STAGING_DIR)/usr/lib

# For ulibc / musl
ifeq ($(BR2_PACKAGE_ARGP_STANDALONE),y)
MESHTASTICD_DEPENDENCIES += argp-standalone
MESHTASTICD_PLATFORMIO_BUILD_FLAGS += -largp
endif

define MESHTASTICD_BUILD_CMDS
	TARGET_AR="$(TARGET_AR)" \
	TARGET_AS="$(TARGET_AS)" \
	TARGET_CC="$(TARGET_CC)" \
	TARGET_CXX="$(TARGET_CXX)" \
	TARGET_CFLAGS="$(TARGET_CFLAGS)" \
	TARGET_LD="$(TARGET_LD)" \
	TARGET_OBJCOPY="$(TARGET_OBJCOPY)" \
	TARGET_RANLIB="$(TARGET_RANLIB)" \
	PLATFORMIO_CACHE_DIR="$(BUILD_DIR)/.platformio_cache" \
	PLATFORMIO_BUILD_FLAGS="$(MESHTASTICD_PLATFORMIO_BUILD_FLAGS)" \
	$(HOST_DIR)/bin/python3 -m platformio run --environment native --project-dir $(@D)
endef

define MESHTASTICD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/.pio/build/native/program \
		$(TARGET_DIR)/usr/sbin/meshtasticd
endef

# Service (Daemon) files -- Untested
define MESHTASTICD_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 0755 $(MESHTASTICD_PKGDIR)/S99meshtasticd \
		$(TARGET_DIR)/etc/init.d/S99meshtasticd
endef

define MESHTASTICD_INSTALL_INIT_SYSTEMD
	$(INSTALL) -D -m 0644 $(MESHTASTICD_PKGDIR)/meshtasticd.service \
		$(TARGET_DIR)/usr/lib/systemd/system/meshtasticd.service
endef

$(eval $(generic-package))
