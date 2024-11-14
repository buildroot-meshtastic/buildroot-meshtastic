################################################################################
#
# python-geopy
#
################################################################################

PYTHON_GEOPY_VERSION = 2.4.1
PYTHON_GEOPY_SOURCE = geopy-$(PYTHON_GEOPY_VERSION).tar.gz
PYTHON_GEOPY_SITE = https://files.pythonhosted.org/packages/0e/fd/ef6d53875ceab72c1fad22dbed5ec1ad04eb378c2251a6a8024bad890c3b
PYTHON_GEOPY_LICENSE = MIT
PYTHON_GEOPY_LICENSE_FILES = LICENSE
PYTHON_GEOPY_SETUP_TYPE = setuptools

$(eval $(python-package))
