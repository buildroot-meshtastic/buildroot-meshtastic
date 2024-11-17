################################################################################
#
# python-meshtastic-tc2-bbs
#
################################################################################

# renovate: datasource=git-refs depName=python-meshtastic-tc2-bbs packageName=https://github.com/TheCommsChannel/TC2-BBS-mesh versioning=git gitBranch=main
PYTHON_MESHTASTIC_TC2_BBS_GITDIGEST = 141eb051567479d227bf446cc06578e7ce2bcced
PYTHON_MESHTASTIC_TC2_BBS_VERSION = $(PYTHON_MESHTASTIC_TC2_BBS_GITDIGEST)
PYTHON_MESHTASTIC_TC2_BBS_SITE = $(call github,TheCommsChannel,TC2-BBS-mesh,v$(PYTHON_MESHTASTIC_TC2_BBS_VERSION))
PYTHON_MESHTASTIC_TC2_BBS_LICENSE = GPL-3.0
PYTHON_MESHTASTIC_TC2_BBS_LICENSE_FILES = LICENSE

define PYTHON_MESHTASTIC_TC2_BBS_INSTALL_TARGET_CMDS
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/opt/TC2-BBS-mesh
	cp -r $(@D)/* $(TARGET_DIR)/opt/TC2-BBS-mesh
endef

# Service (Daemon) files -- Untested
# define PYTHON_MESHTASTIC_TC2_BBS_INSTALL_INIT_SYSV
# 	$(INSTALL) -D -m 0755 $(PYTHON_MESHTASTIC_TC2_BBS_PKGDIR)/S99tc2bbs \
# 		$(TARGET_DIR)/etc/init.d/S99tc2bbs
# endef

# define PYTHON_MESHTASTIC_TC2_BBS_INIT_SYSTEMD
# 	$(INSTALL) -D -m 0644 $(PYTHON_MESHTASTIC_TC2_BBS_PKGDIR)/tc2bbs.service \
# 		$(TARGET_DIR)/usr/lib/systemd/system/tc2bbs.service
# endef

$(eval $(generic-package))
