################################################################################
#
# python-geographiclib
#
################################################################################

PYTHON_GEOGRAPHICLIB_VERSION = 2.0
PYTHON_GEOGRAPHICLIB_SOURCE = geographiclib-$(PYTHON_GEOGRAPHICLIB_VERSION).tar.gz
PYTHON_GEOGRAPHICLIB_SITE = https://files.pythonhosted.org/packages/96/cd/90271fd195d79a9c2af0ca21632b297a6cc3e852e0413a2e4519e67be213
PYTHON_GEOGRAPHICLIB_LICENSE = MIT
PYTHON_GEOGRAPHICLIB_LICENSE_FILES = LICENSE
PYTHON_GEOGRAPHICLIB_SETUP_TYPE = setuptools

$(eval $(python-package))
