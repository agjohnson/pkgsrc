# $NetBSD: Makefile,v 1.96 2012/10/31 11:16:34 asau Exp $

DISTNAME=	anjuta-2.24.2
PKGREVISION=	28
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/anjuta/2.24/}
#MASTER_SITES+=	${MASTER_SITE_SOURCEFORGE:=anjuta/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.anjuta.org/
COMMENT=	Gnome based IDE for C and C++

DEPENDS+=	autogen-[0-9]*:../../devel/autogen
DEPENDS+=	autoconf>=2.59:../../devel/autoconf
DEPENDS+=	automake>=1.8.2:../../devel/automake
DEPENDS+=	gnome-terminal>=2.4.2:../../x11/gnome-terminal
DEPENDS+=	libtool>=1.5.2:../../devel/libtool
DEPENDS+=	yelp>=2.4.2:../../misc/yelp

BUILD_DEPENDS+=		p5-XML-Parser-[0-9]*:../../textproc/p5-XML-Parser

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake:run intltool pkg-config:run msgfmt:run perl:run sh:run
USE_TOOLS+=		bash:run
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--disable-plugin-valgrind
CONFIGURE_ARGS+=	--enable-plugin-scintilla
# pkgsrc devhelp is currently API incompatible
CONFIGURE_ARGS+=	--disable-plugin-devhelp

SUBST_CLASSES+=		unused
SUBST_STAGE.unused=	pre-configure
SUBST_MESSAGE.unused=	Fixing __unused__ occurrances to avoid name clash
SUBST_FILES.unused=	tagmanager/c.c tagmanager/ctags.c tagmanager/general.h
SUBST_FILES.unused+=	tagmanager/lua.c tagmanager/options.c tagmanager/parse.c
SUBST_FILES.unused+=	tagmanager/parse.h tagmanager/regex.c
SUBST_FILES.unused+=	tagmanager/tm_file_entry.c tagmanager/tm_project.c
SUBST_FILES.unused+=	tagmanager/tm_source_file.c tagmanager/tm_workspace.c
SUBST_FILES.unused+=	tagmanager/eiffel.c tagmanager/lregex.c
SUBST_FILES.unused+=	tagmanager/routines.c
SUBST_SED.unused=	-e 's/__unused__/_exctags_unused_/g'

REPLACE_SH+=		scripts/anjuta_import.sh.in
REPLACE_PERL+=		plugins/tools/scripts/*.pl scripts/*.pl
REPLACE_BASH+=		global-tags/create_global_tags.sh.in

GCONF_SCHEMAS+=	anjuta-build-basic-autotools-plugin.schemas
GCONF_SCHEMAS+=	anjuta-cvs-plugin.schemas
GCONF_SCHEMAS+=	anjuta-document-manager.schemas
GCONF_SCHEMAS+=	anjuta-editor-scintilla.schemas
GCONF_SCHEMAS+=	anjuta-editor-sourceview.schemas
GCONF_SCHEMAS+=	anjuta-language-cpp-java.schemas
GCONF_SCHEMAS+=	anjuta-message-manager-plugin.schemas
GCONF_SCHEMAS+=	anjuta-symbol-browser-plugin.schemas
GCONF_SCHEMAS+=	anjuta-terminal-plugin.schemas
GCONF_SCHEMAS+=	anjuta.schemas

BUILDLINK_API_DEPENDS.gtk2+=	gtk2+>=2.12.0

#.include "../../devel/devhelp/buildlink3.mk"
.include "../../devel/gdl/buildlink3.mk"
.include "../../devel/glade3/buildlink3.mk"
.include "../../devel/gnome-build/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../graphics/graphviz/buildlink3.mk"
.include "../../graphics/gnome-icon-theme/buildlink3.mk"
.include "../../print/libgnomeprintui/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../x11/gtksourceview2/buildlink3.mk"
.include "../../x11/vte/buildlink3.mk"
.include "../../databases/shared-mime-info/mimedb.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
