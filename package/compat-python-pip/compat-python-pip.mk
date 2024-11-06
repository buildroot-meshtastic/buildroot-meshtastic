################################################################################
#
# compat-python-pip
# Backport for older versions of buildroot without `host-python-pip`
# Backported from Buildroot 2023.05.x
#
################################################################################

COMPAT_PYTHON_PIP_VERSION = 22.3.1
COMPAT_PYTHON_PIP_SOURCE = pip-$(COMPAT_PYTHON_PIP_VERSION).tar.gz
COMPAT_PYTHON_PIP_SITE = https://files.pythonhosted.org/packages/a3/50/c4d2727b99052780aad92c7297465af5fe6eec2dbae490aa9763273ffdc1
COMPAT_PYTHON_PIP_SETUP_TYPE = setuptools
COMPAT_PYTHON_PIP_LICENSE = MIT
COMPAT_PYTHON_PIP_LICENSE_FILES = LICENSE.txt
COMPAT_PYTHON_PIP_CPE_ID_VENDOR = pypa
COMPAT_PYTHON_PIP_CPE_ID_PRODUCT = pip
# Disputed CVE: things work as designed, and only affects the
# --extra-index-url option. This CVE will never be fixed.
COMPAT_PYTHON_PIP_IGNORE_CVES += CVE-2018-20225

$(eval $(host-python-package))
