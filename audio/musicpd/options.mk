# $NetBSD: options.mk,v 1.12 2009/07/27 20:08:38 drochner Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.musicpd
PKG_SUPPORTED_OPTIONS=	aac audiofile curl flac id3 libao jack libmikmod musepack ogg inet6
PKG_SUGGESTED_OPTIONS=	aac audiofile curl flac id3 libao musepack ogg

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Maac)
.  include "../../audio/faad2/buildlink3.mk"
CONFIGURE_ARGS+=	--with-faad=${BUILDLINK_PREFIX.faad2}
.else
CONFIGURE_ARGS+=	--disable-aac
.endif

.if !empty(PKG_OPTIONS:Maudiofile)
.  include "../../audio/libaudiofile/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-audiofile
.else
CONFIGURE_ARGS+=	--disable-audiofile
.endif

.if !empty(PKG_OPTIONS:Mcurl)
.  include "../../www/curl/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-curl
.else
CONFIGURE_ARGS+=	--disable-curl
.endif

.if !empty(PKG_OPTIONS:Mflac)
.  include "../../audio/flac/buildlink3.mk"
# XXX whole album flac files can appearently be parsed without libcue,
# so I've yet to find out what libcue is good for
#.  include "../../audio/libcue/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-flac
.else
CONFIGURE_ARGS+=	--disable-flac
.endif

.if !empty(PKG_OPTIONS:Mid3)
.  include "../../audio/libid3tag/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-id3
.else
CONFIGURE_ARGS+=	--disable-id3
.endif

.if !empty(PKG_OPTIONS:Mlibao)
.  include "../../audio/libao/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-ao
.else
CONFIGURE_ARGS+=	--disable-ao
.endif

.if !empty(PKG_OPTIONS:Mjack)
.  include "../../audio/jack/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-jack
.else
CONFIGURE_ARGS+=	--disable-jack
.endif

.if !empty(PKG_OPTIONS:Mlibmikmod)
.  include "../../audio/libmikmod/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-mikmod
.else
CONFIGURE_ARGS+=	--disable-mikmod
.endif

.if !empty(PKG_OPTIONS:Mmusepack)
.  include "../../audio/libmpcdec/buildlink3.mk"
CONFIGURE_ENV+=		mpcdec_prefix=${BUILDLINK_PREFIX.libmpcdec}
CONFIGURE_ARGS+=	--enable-mpc
.else
CONFIGURE_ARGS+=	--disable-mpc
.endif

.if !empty(PKG_OPTIONS:Mogg)
.  include "../../audio/libvorbis/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-vorbis
.else
CONFIGURE_ARGS+=	--disable-vorbis
.endif

.if !empty(PKG_OPTIONS:Minet6)
CONFIGURE_ARGS+=	--enable-ipv6
.else
CONFIGURE_ARGS+=	--disable-ipv6
.endif
