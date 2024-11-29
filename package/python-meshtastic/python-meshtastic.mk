################################################################################
#
# python-meshtastic
#
################################################################################

# renovate: datasource=pypi depName=python-meshtastic packageName=meshtastic versioning=semver
PYTHON_MESHTASTIC_VERSION = 2.5.5
PYTHON_MESHTASTIC_SOURCE = meshtastic-$(PYTHON_MESHTASTIC_VERSION).tar.gz
PYTHON_MESHTASTIC_SITE = https://files.pythonhosted.org/packages/ca/8b/bdcae0fe084e263b3c5d6e4223262d77b6897ad903801571a254ff2795b4
PYTHON_MESHTASTIC_SETUP_TYPE = pep517
PYTHON_MESHTASTIC_LICENSE = GPL-3.0
PYTHON_MESHTASTIC_LICENSE_FILES = LICENSES/GPL-3.0-only.txt
PYTHON_MESHTASTIC_DEPENDENCIES = \
	python-requests \
	python-protobuf \
	python-serial \
	python-pexpect \
	python-pyqrcode \
	python-pyyaml \
	python-webencodings \
	python-pyparsing \
	python-bleak \
	python-dotmap \
	python-tabulate \
	python-pypubsub \
	python-print-color

$(eval $(python-package))
