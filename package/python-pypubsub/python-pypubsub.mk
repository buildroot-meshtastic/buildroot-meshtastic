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

$(eval $(python-package))
