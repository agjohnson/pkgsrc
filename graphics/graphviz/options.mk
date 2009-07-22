# $NetBSD: options.mk,v 1.8 2009/07/22 19:38:34 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.graphviz
PKG_SUPPORTED_OPTIONS=	gd x11 pangocairo gtk rsvg swig guile lua ocaml tcl perl
PKG_SUGGESTED_OPTIONS=	gd x11 pangocairo gtk rsvg swig lua tcl perl
# Explanation of consquence of options, to help those trying to slim down:
#   swig: build-time only, needed for any of the languages.  Silently
#     forces off language options.
#   ocaml lua tcl perl: extension language support
#   x11: Omits all linking with x11.  Silently forces off pangocairo, gtk
#     and rsvg.
#   pangocairo: TODO.  Silently forces off gtk.
#   gtk: TODO
#   rsvg: Omitting loses svg support.  librsvg has large dependencies
#     including some Gnome libs.
#   gd: TODO (seems small)

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		gd x11 pangocairo rsvg gtk guile lua ocaml tcl perl

.if !empty(PKG_OPTIONS:Mx11)
.include "../../x11/libXp/buildlink3.mk"
.include "../../mk/xaw.buildlink3.mk"
CONFIGURE_ENV+=		X11PREFIX=${X11PREFIX} X11BASE=${X11BASE}
PLIST.x11=		yes

.if !empty(PKG_OPTIONS:Mpangocairo)
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
PLIST.pangocairo=	yes

.if !empty(PKG_OPTIONS:Mgtk)
.include "../../x11/gtk2/buildlink3.mk"
PLIST.gtk=		yes
.else
CONFIGURE_ARGS+=	--without-gdk-pixbuf
CONFIGURE_ARGS+=	--without-gtk
CONFIGURE_ARGS+=	--without-gnomeui
.endif

.if !empty(PKG_OPTIONS:Mrsvg)
.include "../../graphics/librsvg/buildlink3.mk"
PLIST.rsvg=		yes
.else
CONFIGURE_ARGS+=	--without-rsvg
.endif

.else
CONFIGURE_ARGS+=	--without-pangocairo

CONFIGURE_ARGS+=	--without-gdk-pixbuf
CONFIGURE_ARGS+=	--without-gtk
CONFIGURE_ARGS+=	--without-gnomeui

CONFIGURE_ARGS+=	--without-rsvg
.endif

.else
CONFIGURE_ARGS+=	--without-x

CONFIGURE_ARGS+=	--without-pangocairo

CONFIGURE_ARGS+=	--without-gdk-pixbuf
CONFIGURE_ARGS+=	--without-gtk
CONFIGURE_ARGS+=	--without-gnomeui

CONFIGURE_ARGS+=	--without-rsvg
.endif

.if !empty(PKG_OPTIONS:Mgd)
.include "../../graphics/gd/buildlink3.mk"
PLIST.gd=		yes
.else
CONFIGURE_ARGS+=	--without-libgd
.endif

.if !empty(PKG_OPTIONS:Mswig)
.include "../../devel/swig/buildlink3.mk"

.if !empty(PKG_OPTIONS:Mlua)
.include "../../lang/lua/buildlink3.mk"
PLIST.lua=		yes
.else
CONFIGURE_ARGS+=	--disable-lua
.endif

.if !empty(PKG_OPTIONS:Mocaml)
.include "../../lang/ocaml/buildlink3.mk"
PLIST.ocaml=		yes
.else
CONFIGURE_ARGS+=	--disable-ocaml
.endif

.if !empty(PKG_OPTIONS:Mtcl)
.include "../../x11/tk/buildlink3.mk"
CONFIGURE_ENV+=		TCLCONFIG=${TCLCONFIG_SH:Q}
CONFIGURE_ENV+=		TKCONFIG=${TKCONFIG_SH:Q}
PLIST.tcl=		yes
.else
CONFIGURE_ARGS+=	--disable-tcl
.endif

.if !empty(PKG_OPTIONS:Mguile)
.include "../../lang/guile/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-guile
PLIST.guile=		yes
.else
CONFIGURE_ARGS+=	--disable-guile
.endif

.if !empty(PKG_OPTIONS:Mperl)
.include "../../lang/perl5/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-perl
PLIST.perl=		yes
USE_TOOLS+=perl
.else
CONFIGURE_ARGS+=	--disable-perl
.endif

.else
CONFIGURE_ARGS+=	--disable-swig
CONFIGURE_ARGS+=	--disable-tcl
CONFIGURE_ARGS+=	--disable-ocaml
CONFIGURE_ARGS+=	--disable-lua
CONFIGURE_ARGS+=	--disable-guile
CONFIGURE_ARGS+=	--disable-perl
.endif
