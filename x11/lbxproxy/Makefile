# $NetBSD: Makefile,v 1.6 2012/10/29 05:06:32 asau Exp $
#

DISTNAME=		lbxproxy-1.0.2
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_XORG:=app/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		Low Bandwidth extension proxy

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config

BROKEN=			Unsupported by modern X.org

.include "../../x11/bigreqsproto/buildlink3.mk"
.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/liblbxutil/buildlink3.mk"
.include "../../x11/xproxymanagementprotocol/buildlink3.mk"
.include "../../x11/xtrans/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
