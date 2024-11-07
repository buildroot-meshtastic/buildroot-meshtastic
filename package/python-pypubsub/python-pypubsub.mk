################################################################################
#
# python-pypubsub
#
################################################################################

PYTHON_PYPUBSUB_VERSION = 4.0.3
PYTHON_PYPUBSUB_SITE = $(call github,schollii,pypubsub,v$(PYTHON_PYPUBSUB_VERSION))
PYTHON_PYPUBSUB_LICENSE = BSD-Simple
PYTHON_PYPUBSUB_LICENSE_FILES = src/pubsub/LICENSE_BSD_Simple.txt
PYTHON_PYPUBSUB_SETUP_TYPE = setuptools
PYTHON_PYPUBSUB_DEPENDENCIES = 

# backport workaround
# revisit this
ifeq ($(BR2_PACKAGE_HOST_PYTHON_POETRY_CORE),y)
PYTHON_PYPUBSUB_DEPENDENCIES += host-python-poetry-core
else
PYTHON_PYPUBSUB_DEPENDENCIES += host-compat-python-poetry-core
endif

$(eval $(python-package))
