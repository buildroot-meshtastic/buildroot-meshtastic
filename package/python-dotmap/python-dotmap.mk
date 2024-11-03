################################################################################
#
# python-dotmap
#
################################################################################

PYTHON_DOTMAP_VERSION = 1.3.30
PYTHON_DOTMAP_SOURCE = dotmap-$(PYTHON_DOTMAP_VERSION).tar.gz
PYTHON_DOTMAP_SITE = https://files.pythonhosted.org/packages/bc/68/c186606e4f2bf731abd18044ea201e70c3c244bf468f41368820d197fca5
PYTHON_DOTMAP_LICENSE = MIT
PYTHON_DOTMAP_LICENSE_FILES = LICENSE.txt
PYTHON_DOTMAP_SETUP_TYPE = setuptools

$(eval $(python-package))
