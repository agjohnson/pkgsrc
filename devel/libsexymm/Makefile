# $NetBSD: Makefile,v 1.19 2012/10/31 11:17:20 asau Exp $
#

DISTNAME=	libsexymm-0.1.9
PKGREVISION=	15
CATEGORIES=	devel
MASTER_SITES=	http://releases.chipx86.com/libsexy/libsexymm/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.chipx86.com/wiki/Libsexy
COMMENT=	C++ bindings for libsexy

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	libsexy/libsexymm.pc.in

.include "../../x11/gtkmm/buildlink3.mk"
.include "../../devel/libsexy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
