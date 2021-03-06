# $NetBSD: options.mk,v 1.8 2012/06/12 15:46:05 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.modular-xorg-server
PKG_SUPPORTED_OPTIONS=	dri inet6 debug
PKG_SUGGESTED_OPTIONS=	dri inet6

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		dri

.if !empty(PKG_OPTIONS:Mdri)
PLIST.dri=		yes
CONFIGURE_ARGS+=	--enable-dri
CONFIGURE_ARGS+=	--enable-glx
CONFIGURE_ARGS+=	--enable-aiglx
.else
###
### XXX Perhaps we should allow for a built-in glx without dri enabled?
###
CONFIGURE_ARGS+=	--disable-dri
CONFIGURE_ARGS+=	--disable-glx
.endif

.if !empty(PKG_OPTIONS:Minet6)
CONFIGURE_ARGS+=	--enable-ipv6
.else
CONFIGURE_ARGS+=	--disable-ipv6
.endif

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--enable-debug
CFLAGS+=		-ggdb
.endif
