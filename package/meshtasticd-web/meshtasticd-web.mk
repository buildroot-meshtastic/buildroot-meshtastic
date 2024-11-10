################################################################################
#
# meshtasticd-web
#
################################################################################

MESHTASTICD_WEB_VERSION = 2.5.3
MESHTASTICD_WEB_SOURCE = build.tar
MESHTASTICD_WEB_SITE = https://github.com/meshtastic/web/releases/download/v$(MESHTASTICD_WEB_VERSION)
MESHTASTICD_WEB_LICENSE = GPL-3.0

define MESHTASTICD_WEB_EXTRACT_CMDS
    $(TAR) -C $(@D) $(TAR_OPTIONS) $(MESHTASTICD_WEB_DL_DIR)/$(MESHTASTICD_WEB_SOURCE)
	gunzip $(@D)/*.gz
endef

define MESHTASTICD_WEB_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/doc/meshtasticd/web
	cp -a $(@D)/* $(TARGET_DIR)/usr/share/doc/meshtasticd/web
endef

$(eval $(generic-package))
