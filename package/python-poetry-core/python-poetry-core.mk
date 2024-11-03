################################################################################
#
# python-poetry-core
#
################################################################################
# Adapted from https://github.com/buildroot/buildroot/tree/2024.08.x/package/python-poetry-core

BR2_VERSION_MAJOR := $(shell echo $(BR2_VERSION) | cut -d. -f1)
BR2_VERSION_MINOR := $(shell echo $(BR2_VERSION) | cut -d. -f2)

PYTHON_POETRY_CORE_VERSION = 1.9.0
PYTHON_POETRY_CORE_SOURCE = poetry_core-$(PYTHON_POETRY_CORE_VERSION).tar.gz
PYTHON_POETRY_CORE_SITE = https://files.pythonhosted.org/packages/f2/db/20a9f9cae3f3c213a8c406deb4395698459fd96962cea8f2ccb230b1943c
PYTHON_POETRY_CORE_SETUP_TYPE = pep517
PYTHON_POETRY_CORE_LICENSE = MIT
PYTHON_POETRY_CORE_LICENSE_FILES = LICENSE

# This is a backport!
# check if Buildroot version is older than 2024.05
ifeq ($(shell \
	if [ $(BR2_VERSION_MAJOR) -lt 2024 ] || \
		{ [ $(BR2_VERSION_MAJOR) -eq 2024 ] && [ $(BR2_VERSION_MINOR) -lt 5 ]; }; then \
		echo true; \
	fi \
),true)
	$(warning "Applying backported version of python-poetry-core for Buildroot version older than 2024.05")
	$(eval $(host-python-package))
else
	$(warning "Skipping backported python-poetry-core; already included in Buildroot version 2024.05 or newer.")
endif
