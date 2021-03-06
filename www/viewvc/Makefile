# $NetBSD: Makefile,v 1.18 2012/12/27 12:56:36 darcy Exp $
#

DISTNAME=	viewvc-1.1.17
CATEGORIES=	devel www
MASTER_SITES=	# http://viewvc.tigris.org/files/documents/3330/49022/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.viewvc.org/
COMMENT=	Viewing the content of CVS/SVN repositories with a Webbrowser
LICENSE=	2-clause-bsd

PYTHON_PATCH_SCRIPTS=	viewvc-install bin/* bin/cgi/*.cgi lib/*.py

.if !exists(/usr/bin/rlog)
DEPENDS+=	rcs-[0-9]*:../../devel/rcs
RCS_PKG=	YES
.else
RCS_PKG=	NO
.endif

NO_BUILD=	YES
VIEWVCDIR=	share/viewvc
PLIST_SUBST+=	VIEWVCDIR=${VIEWVCDIR:Q}

CONF_FILES=	${PREFIX}/share/examples/viewvc/viewvc.conf \
		${PREFIX}/${VIEWVCDIR:Q}/viewvc.conf
CONF_FILES+=	${PREFIX}/share/examples/viewvc/cvsgraph.conf \
		${PREFIX}/${VIEWVCDIR:Q}/cvsgraph.conf

.include "options.mk"

SUBST_CLASSES+=		conf
SUBST_STAGE.conf=	post-patch
SUBST_MESSAGE.conf=	Fixing configuration files.
SUBST_FILES.conf=	conf/viewvc.conf.dist
SUBST_FILES.conf+=	conf/cvsgraph.conf.dist
SUBST_SED.conf=		-e "s|@VIEWVCDIR@|${VIEWVCDIR}|g"
SUBST_SED.conf+=	-e "s|@PREFIX@|${PREFIX}|g"
SUBST_SED.conf+=	-e "s|@PHP_OPT@|${PHP_OPT}|g"
SUBST_SED.conf+=	-e "s|@CVSGRAPH_OPT@|${CVSGRAPH_OPT}|g"

.if defined(RCS_PKG) && ${RCS_PKG} == "YES"
SUBST_SED.conf+=	-e "s|@RCS_PREFIX@|${PREFIX}|g"
.else
SUBST_SED.conf+=	-e "s|@RCS_PREFIX@|/usr|g"
.endif

CHECK_PORTABILITY_SKIP=	tools/make-release

INSTALLATION_DIRS=	share/examples/viewvc

do-install:
	(cd ${WRKSRC} && \
		${PYTHONBIN} \
		viewvc-install --prefix=${PREFIX}/${VIEWVCDIR} --destdir=${DESTDIR})

	${INSTALL_DATA} ${WRKSRC}/conf/viewvc.conf.dist \
		${DESTDIR}${PREFIX}/share/examples/viewvc/viewvc.conf
	${INSTALL_DATA} ${WRKSRC}/conf/cvsgraph.conf.dist \
		${DESTDIR}${PREFIX}/share/examples/viewvc/cvsgraph.conf

post-install:
	${CHMOD} ${SHAREMODE} \
		${DESTDIR}/${PREFIX}/share/viewvc/bin/mod_python/.htaccess
	${CHMOD} ${SHAREMODE} \
		${DESTDIR}/${PREFIX}/share/viewvc/bin/mod_python/*.py

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
