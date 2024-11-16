################################################################################
#
# python-meshing-around
#
################################################################################

# renovate: datasource=github-releases packageName=SpudGunMan/meshing-around versioning=semver
PYTHON_MESHING_AROUND_VERSION = 1.4.5
PYTHON_MESHING_AROUND_SITE = $(call github,SpudGunMan,meshing-around,v$(PYTHON_MESHING_AROUND_VERSION))
PYTHON_MESHING_AROUND_LICENSE = GPL-3.0
PYTHON_MESHING_AROUND_LICENSE_FILES = LICENSE

define PYTHON_MESHING_AROUND_INSTALL_TARGET_CMDS
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/opt/meshingaround
	cp -r $(@D)/* $(TARGET_DIR)/opt/meshingaround
endef

# Service (Daemon) files -- Untested
define PYTHON_MESHING_AROUND_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 0755 $(PYTHON_MESHING_AROUND_PKGDIR)/S99meshingaround \
		$(TARGET_DIR)/etc/init.d/S99meshingaround
endef

define PYTHON_MESHING_AROUND_INIT_SYSTEMD
	$(INSTALL) -D -m 0644 $(PYTHON_MESHING_AROUND_PKGDIR)/meshingaround.service \
		$(TARGET_DIR)/usr/lib/systemd/system/meshingaround.service
endef

$(eval $(generic-package))
