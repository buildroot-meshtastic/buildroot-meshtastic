################################################################################
#
# python-openmeteo-requests
#
################################################################################

PYTHON_OPENMETEO_REQUESTS_VERSION = 1.3.0
PYTHON_OPENMETEO_REQUESTS_SOURCE = openmeteo_requests-$(PYTHON_OPENMETEO_REQUESTS_VERSION).tar.gz
PYTHON_OPENMETEO_REQUESTS_SITE = https://files.pythonhosted.org/packages/d6/0f/41364bf4f30164cb0d7c357e6b3c099f85995d946ae31959a52605253da5
PYTHON_OPENMETEO_REQUESTS_LICENSE = MIT
PYTHON_OPENMETEO_REQUESTS_LICENSE_FILES = LICENSE
PYTHON_OPENMETEO_REQUESTS_SETUP_TYPE = pep517
PYTHON_OPENMETEO_REQUESTS_DEPENDENCIES = host-python-hatchling

$(eval $(python-package))
