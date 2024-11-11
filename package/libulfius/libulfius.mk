################################################################################
#
# libulfius
# https://github.com/babelouest/ulfius
#
################################################################################

LIBULFIUS_VERSION = 2.7.15
LIBULFIUS_SITE = $(call github,babelouest,ulfius,v$(LIBULFIUS_VERSION))
LIBULFIUS_LICENSE = GPL-2.1
LIBULFIUS_LICENSE_FILES = LICENSE
LIBULFIUS_INSTALL_STAGING = YES
LIBULFIUS_CONF_OPTS = \
	-DWITH_JANSSON=ON \
	-DWITH_CURL=ON \
	-DWITH_GNUTLS=ON \
	-DWITH_WEBSOCKET=ON \
	-DWITH_JOURNALD=OFF \
	-DWITH_YDER=ON \
	-DBUILD_UWSC=ON \
	-DBUILD_STATIC=OFF \
	-DBUILD_ULFIUS_TESTING=OFF \
	-DBUILD_ULFIUS_DOCUMENTATION=OFF \
	-DINSTALL_HEADER=ON \
	-DCMAKE_BUILD_TYPE=Release
LIBULFIUS_DEPENDENCIES = \
	libmicrohttpd \
	jansson \
	libcurl \
	gnutls \
	libwebsockets \
	zlib \
	liborcania \
	libyder

$(eval $(cmake-package))
