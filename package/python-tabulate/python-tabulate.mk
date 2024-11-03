################################################################################
#
# python-tabulate
#
################################################################################

PYTHON_TABULATE_VERSION = 0.9.0
PYTHON_TABULATE_SOURCE = tabulate-$(PYTHON_TABULATE_VERSION).tar.gz
PYTHON_TABULATE_SITE = https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1
PYTHON_TABULATE_LICENSE = MIT
PYTHON_TABULATE_LICENSE_FILES = LICENSE
PYTHON_TABULATE_SETUP_TYPE = setuptools

$(eval $(python-package))
$(eval $(host-python-package))
