# $NetBSD: Makefile,v 1.10 2012/10/23 19:51:09 asau Exp $

DISTNAME=	k4dirstat-2.7.3
PKGREVISION=	7
CATEGORIES=	sysutils
MASTER_SITES=	http://bitbucket.org/jeromerobert/k4dirstat/get/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	markd@NetBSD.org
HOMEPAGE=	http://bitbucket.org/jeromerobert/k4dirstat
COMMENT=	Graphical disk usage utility

BUILD_DEPENDS+=	automoc4>=0.9.87:../../devel/automoc4

USE_TOOLS+=	perl msgfmt
USE_LANGUAGES=	c c++

WRKSRC=		${WRKDIR}/jeromerobert-k4dirstat-7764f6508187

FETCH_USING=	curl

.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../x11/kde-baseapps4/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"

.include "../../mk/bsd.pkg.mk"
