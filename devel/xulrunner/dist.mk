# $NetBSD: dist.mk,v 1.4 2010/01/19 10:07:49 tnn Exp $
#
# used by devel/nspr/Makefile
# used by devel/nss/Makefile
# used by devel/xulrunner/Makefile
# used by www/firefox/Makefile

DISTNAME=	firefox-${FIREFOX_VER}.source
FIREFOX_VER=	3.5.6
MASTER_SITES=	${MASTER_SITE_MOZILLA:=firefox/releases/${FIREFOX_VER}/source/}
EXTRACT_SUFX=	.tar.bz2

DISTINFO_FILE=	${.CURDIR}/../../devel/xulrunner/distinfo
PATCHDIR=	${.CURDIR}/../../devel/xulrunner/patches

WRKSRC=		${WRKDIR}/mozilla-1.9.1
