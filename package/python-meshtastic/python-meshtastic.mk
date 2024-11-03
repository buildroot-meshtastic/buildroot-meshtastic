################################################################################
#
# python-meshtastic
#
################################################################################

PYTHON_MESHTASTIC_VERSION = 2.5.4
PYTHON_MESHTASTIC_SOURCE = meshtastic-$(PYTHON_MESHTASTIC_VERSION).tar.gz
PYTHON_MESHTASTIC_SITE = https://files.pythonhosted.org/packages/39/61/f050abaedd206b942e04362d84a5b73a3e8da04454548a0d3c060da4c027
PYTHON_MESHTASTIC_SETUP_TYPE = pep517
PYTHON_MESHTASTIC_LICENSE = GPL-3.0
PYTHON_MESHTASTIC_LICENSE_FILES = LICENSES/GPL-3.0-only.txt
PYTHON_MESHTASTIC_DEPENDENCIES = \
	host-python-poetry-core \
	python-serial \
	python-dotmap

$(eval $(python-package))
