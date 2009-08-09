# $NetBSD: options.mk,v 1.2 2009/08/09 21:13:39 tnn Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.firefox
PKG_SUPPORTED_OPTIONS=	debug official-mozilla-branding mozilla-jemalloc

PLIST_VARS+=		branding

.if ${OPSYS} == "Linux" || ${OPSYS} == "SunOS"
PKG_SUGGESTED_OPTIONS+=	mozilla-jemalloc
.endif

.if !empty(MACHINE_ARCH:Mi386) || !empty(MACHINE_ARCH:Msparc) || \
	!empty(MACHINE_ARCH:Marm)
PKG_SUPPORTED_OPTIONS+= mozilla-jit
PKG_SUGGESTED_OPTIONS+= mozilla-jit
.endif

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mmozilla-jemalloc)
CONFIGURE_ARGS+=	--enable-jemalloc
. if ${OPSYS} == "SunOS"
PLIST.jemalloc=		yes
. endif
.else
CONFIGURE_ARGS+=	--disable-jemalloc
.endif

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--enable-debug
.else
CONFIGURE_ARGS+=	--disable-debug
.endif

.if !empty(PKG_OPTIONS:Mmozilla-jit)
CONFIGURE_ARGS+=	--enable-jit
.else
CONFIGURE_ARGS+=	--disable-jit
.endif

.if !empty(PKG_OPTIONS:Mofficial-mozilla-branding)
CONFIGURE_ARGS+=	--enable-official-branding
PLIST.branding=		yes
LICENSE=		mozilla-trademark-license
RESTRICTED=		Trademark holder prohibits distribution of modified versions.
NO_BIN_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_FTP=		${RESTRICTED}
.endif
