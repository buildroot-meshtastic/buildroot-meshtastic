################################################################################
#
# liborcania
# https://github.com/babelouest/orcania
#
################################################################################

LIBORCANIA_VERSION = 2.3.3
LIBORCANIA_SITE = $(call github,babelouest,orcania,v$(LIBORCANIA_VERSION))
LIBORCANIA_LICENSE = GPL-2.1
LIBORCANIA_LICENSE_FILES = LICENSE
LIBORCANIA_INSTALL_STAGING = YES
LIBORCANIA_CONF_OPTS = \
	-DBUILD_STATIC=OFF \
	-DWITH_STRSTR=OFF \
	-DBUILD_ORCANIA_TESTING=OFF \
	-DINSTALL_HEADER=ON \
	-DBUILD_ORCANIA_DOCUMENTATION=OFF \
	-DCMAKE_BUILD_TYPE=Release
LIBORCANIA_DEPENDENCIES = 

$(eval $(cmake-package))
