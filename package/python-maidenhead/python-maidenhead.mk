################################################################################
#
# python-maidenhead
#
################################################################################

PYTHON_MAIDENHEAD_VERSION = 1.7.0
PYTHON_MAIDENHEAD_SOURCE = maidenhead-$(PYTHON_MAIDENHEAD_VERSION).tar.gz
PYTHON_MAIDENHEAD_SITE = https://files.pythonhosted.org/packages/0e/44/3d1a97c37496c1c0de1d8b78dd74e3c9a1dfe29f598769ac51b1297d09ef
PYTHON_MAIDENHEAD_LICENSE = MIT
PYTHON_MAIDENHEAD_LICENSE_FILES = LICENSE.txt
PYTHON_MAIDENHEAD_SETUP_TYPE = setuptools

$(eval $(python-package))
