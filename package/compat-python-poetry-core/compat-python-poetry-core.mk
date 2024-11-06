################################################################################
#
# python-poetry-core
#
################################################################################
# Adapted from https://github.com/buildroot/buildroot/tree/2024.08.x/package/python-poetry-core

COMPAT_PYTHON_POETRY_CORE_VERSION = 1.9.0
COMPAT_PYTHON_POETRY_CORE_SOURCE = poetry_core-$(COMPAT_PYTHON_POETRY_CORE_VERSION).tar.gz
COMPAT_PYTHON_POETRY_CORE_SITE = https://files.pythonhosted.org/packages/f2/db/20a9f9cae3f3c213a8c406deb4395698459fd96962cea8f2ccb230b1943c
COMPAT_PYTHON_POETRY_CORE_SETUP_TYPE = pep517
COMPAT_PYTHON_POETRY_CORE_LICENSE = MIT
COMPAT_PYTHON_POETRY_CORE_LICENSE_FILES = LICENSE

$(eval $(host-python-package))
