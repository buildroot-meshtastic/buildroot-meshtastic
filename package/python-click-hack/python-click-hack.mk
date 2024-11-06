################################################################################
#
# python-click-hack
# 
# host-only package for `python-click`.
# buildroot provides a target-only package for `python-click`,
# we cannot re-use the same package name.
#
################################################################################
# Adapted from https://github.com/buildroot/buildroot/tree/2024.08.x/package/python-click

PYTHON_CLICK_HACK_VERSION = 8.1.7
PYTHON_CLICK_HACK_SOURCE = click-$(PYTHON_CLICK_HACK_VERSION).tar.gz
PYTHON_CLICK_HACK_SITE = https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5
PYTHON_CLICK_HACK_LICENSE = BSD-3-Clause
PYTHON_CLICK_HACK_LICENSE_FILES = LICENSE.rst
PYTHON_CLICK_HACK_SETUP_TYPE = setuptools

$(eval $(host-python-package))
