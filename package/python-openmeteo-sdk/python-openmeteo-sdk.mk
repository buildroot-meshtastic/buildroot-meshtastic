################################################################################
#
# python-openmeteo-sdk
#
################################################################################

PYTHON_OPENMETEO_SDK_VERSION = 1.18.0
PYTHON_OPENMETEO_SDK_SOURCE = openmeteo_sdk-$(PYTHON_OPENMETEO_SDK_VERSION).tar.gz
PYTHON_OPENMETEO_SDK_SITE = https://files.pythonhosted.org/packages/b2/1d/4d81ed509959c1e1054007745e4b5ed853a5af80f930a777dc5f0547ca12
PYTHON_OPENMETEO_SDK_LICENSE = MIT
PYTHON_OPENMETEO_SDK_SETUP_TYPE = pep517
PYTHON_OPENMETEO_SDK_DEPENDENCIES = host-python-hatchling

$(eval $(python-package))
