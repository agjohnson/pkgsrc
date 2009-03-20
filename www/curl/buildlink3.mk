# $NetBSD: buildlink3.mk,v 1.21 2009/03/20 19:25:36 joerg Exp $

BUILDLINK_TREE+=	curl

.if !defined(CURL_BUILDLINK3_MK)
CURL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.curl+=	curl>=7.12.3
BUILDLINK_ABI_DEPENDS.curl+=	curl>=7.17.1nb1
BUILDLINK_PKGSRCDIR.curl?=	../../www/curl

pkgbase:= curl
.  include "../../mk/pkg-build-options.mk"
.  if !empty(PKG_BUILD_OPTIONS.curl:Mlibssh2)
.    include "../../security/libssh2/buildlink3.mk"
.  endif
.  if !empty(PKG_BUILD_OPTIONS.curl:Mgssapi)
.    include "../../mk/krb5.buildlink3.mk"
.  endif

.include "../../devel/libidn/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.endif # CURL_BUILDLINK3_MK

BUILDLINK_TREE+=	-curl
