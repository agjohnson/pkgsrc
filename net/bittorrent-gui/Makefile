# $NetBSD: Makefile,v 1.32 2012/10/23 17:18:12 asau Exp $

.include "../../net/bittorrent/Makefile.common"

PKGNAME=	${DISTNAME:S/BitTorrent/bittorrent-gui/}
PKGREVISION=	12

COMMENT+=	(GTK+ GUI)

DEPENDS+=	bittorrent>=${PKGVERSION_NOREV}:../../net/bittorrent
DEPENDS+=	${PYPKGPREFIX}-gtk2>=2.6:../../x11/py-gtk2

PYTHON_PATCH_SCRIPTS= bittorrent maketorrent

CONFLICTS+=	bittornado-gui-[0-9]*

ICONS_DIR=		share/pixmaps/BitTorrent-${PKGVERSION:C/nb.*//}/icons
INSTALLATION_DIRS=	bin ${ICONS_DIR} ${ICONS_DIR}/default ${ICONS_DIR}/old

NO_BUILD=	yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bittorrent ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/maketorrent ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/images/icons/default/* \
	  ${DESTDIR}${PREFIX}/${ICONS_DIR}/default
	${INSTALL_DATA} ${WRKSRC}/images/icons/old/* \
	  ${DESTDIR}${PREFIX}/${ICONS_DIR}/old

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
