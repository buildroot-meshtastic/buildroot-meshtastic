################################################################################
#
# compat-python-click
# 
# host-only package for `python-click`.
# buildroot provides a target-only package for `python-click`,
# we cannot re-use the same package name.
#
################################################################################
# Adapted from https://github.com/buildroot/buildroot/tree/2024.08.x/package/python-click

COMPAT_PYTHON_CLICK_VERSION = 8.1.7
COMPAT_PYTHON_CLICK_SOURCE = click-$(COMPAT_PYTHON_CLICK_VERSION).tar.gz
COMPAT_PYTHON_CLICK_SITE = https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5
COMPAT_PYTHON_CLICK_LICENSE = BSD-3-Clause
COMPAT_PYTHON_CLICK_LICENSE_FILES = LICENSE.rst
COMPAT_PYTHON_CLICK_SETUP_TYPE = setuptools

$(eval $(host-python-package))
