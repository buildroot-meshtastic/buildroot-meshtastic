################################################################################
#
# python-ephem
#
################################################################################

PYTHON_EPHEM_VERSION = 4.1.6
PYTHON_EPHEM_SOURCE = ephem-$(PYTHON_EPHEM_VERSION).tar.gz
PYTHON_EPHEM_SITE = https://files.pythonhosted.org/packages/45/eb/844403865b5c861736c85196112a791c74283f27bf4496de2381eb57c085
PYTHON_EPHEM_LICENSE = MIT
PYTHON_EPHEM_LICENSE_FILES = LICENSE
PYTHON_EPHEM_SETUP_TYPE = setuptools

$(eval $(python-package))
