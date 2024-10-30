################################################################################
#
# python-meshtastic
#
################################################################################

PYTHON_MESHTASTIC_VERSION = 2.5.3
PYTHON_MESHTASTIC_SOURCE = meshtastic-$(PYTHON_MESHTASTIC_VERSION).tar.gz
PYTHON_MESHTASTIC_SITE = https://files.pythonhosted.org/packages/ef/7e/67b068f6a8002f3932fcc92fe1d1315824ee977d2bf2d7982f5d846e376d
PYTHON_MESHTASTIC_SETUP_TYPE = pep517
PYTHON_MESHTASTIC_LICENSE = GPL-3.0
PYTHON_MESHTASTIC_LICENSE_FILES = LICENSES/GPL-3.0-only.txt

$(eval $(python-package))
