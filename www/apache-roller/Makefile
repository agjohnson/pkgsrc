# $NetBSD: Makefile,v 1.9 2012/12/26 18:46:00 asau Exp $
#

DISTNAME=	roller-weblogger-${ROLLER_VER}-for-tomcat
PKGNAME=	apache-roller-${ROLLER_VER}
WRKSRC=		${WRKDIR}/${DISTNAME:S/-for//}
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_APACHE:=roller/roller-5/v${ROLLER_VER}/bin/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://roller.apache.org/
COMMENT=	Full-featured, multi-user and group-blog server

BUILD_DEPENDS+=	fastjar-[0-9]*:../../archivers/fastjar

USE_JAVA=	run
USE_JAVA2=	1.5
ROLLER_VER=	5.0.1

PLIST_SUBST+=		PKGNAME_NOREV=${PKGNAME_NOREV:Q}

.include "options.mk"

do-build:
	:

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/apache-roller
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/apache-roller
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/examples/apache-roller

	${INSTALL_DATA} ${WRKSRC}/docs/roller-*.pdf \
		${DESTDIR}${PREFIX}/share/doc/apache-roller
	${INSTALL_DATA} ${WRKSRC}/*.txt \
		${DESTDIR}${PREFIX}/share/doc/apache-roller
	${INSTALL_DATA} ${WRKSRC}/webapp/roller-${ROLLER_VER}-tomcat.war \
		${DESTDIR}${PREFIX}/share/apache-roller/${PKGNAME_NOREV}.war
	${INSTALL_DATA} ${FILESDIR}/roller-custom.properties \
		${DESTDIR}${PREFIX}/share/examples/apache-roller

.include "../../mk/mysql.buildlink3.mk"
.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
