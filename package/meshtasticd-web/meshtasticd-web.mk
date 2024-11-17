################################################################################
#
# meshtasticd-web
#
################################################################################

# renovate: datasource=github-releases packageName=meshtastic/web versioning=semver
MESHTASTICD_WEB_VERSION = 2.5.4
MESHTASTICD_WEB_SOURCE = build.tar
MESHTASTICD_WEB_SITE = https://github.com/meshtastic/web/releases/download/v$(MESHTASTICD_WEB_VERSION)
MESHTASTICD_WEB_LICENSE = GPL-3.0
MESHTASTICD_WEB_EXTRACT_DEPENDENCIES = host-gzip
MESHTASTICD_WEB_DEPENDENCIES = \
	liborcania \
	libyder \
	libulfius \
	libopenssl \
	openssl

define MESHTASTICD_WEB_EXTRACT_CMDS
	$(TAR) -C $(@D) $(TAR_OPTIONS) $(MESHTASTICD_WEB_DL_DIR)/$(MESHTASTICD_WEB_SOURCE)
	gunzip -r $(@D)/
endef

define MESHTASTICD_WEB_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/meshtasticd/web
	cp -r $(@D)/* $(TARGET_DIR)/usr/share/meshtasticd/web
endef

$(eval $(generic-package))
