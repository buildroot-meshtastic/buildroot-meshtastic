################################################################################
#
# python-meshtastic-channel-link
#
################################################################################

# renovate: datasource=github-releases packageName=pdxlocations/ChannelLink-for-Meshtastic versioning=semver
PYTHON_MESHTASTIC_CHANNEL_LINK_VERSION = 1.0.1
PYTHON_MESHTASTIC_CHANNEL_LINK_SITE = $(call github,pdxlocations,ChannelLink-for-Meshtastic,v$(PYTHON_MESHTASTIC_CHANNEL_LINK_VERSION))
PYTHON_MESHTASTIC_CHANNEL_LINK_LICENSE = GPL-3.0
PYTHON_MESHTASTIC_CHANNEL_LINK_LICENSE_FILES = LICENSE

define PYTHON_MESHTASTIC_CHANNEL_LINK_INSTALL_TARGET_CMDS
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/opt/ChannelLink-for-Meshtastic
	cp -r $(@D)/* $(TARGET_DIR)/opt/ChannelLink-for-Meshtastic
endef

# Service (Daemon) files -- Untested
# define PYTHON_MESHTASTIC_CHANNEL_LINK_INSTALL_INIT_SYSV
# 	$(INSTALL) -D -m 0755 $(PYTHON_MESHTASTIC_CHANNEL_LINK_PKGDIR)/S99ChannelLink \
# 		$(TARGET_DIR)/etc/init.d/S99ChannelLink
# endef

# define PYTHON_MESHTASTIC_CHANNEL_LINK_INIT_SYSTEMD
# 	$(INSTALL) -D -m 0644 $(PYTHON_MESHTASTIC_CHANNEL_LINK_PKGDIR)/ChannelLink.service \
# 		$(TARGET_DIR)/usr/lib/systemd/system/ChannelLink.service
# endef

$(eval $(generic-package))
