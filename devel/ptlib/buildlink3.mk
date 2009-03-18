# $NetBSD: buildlink3.mk,v 1.6 2009/03/18 11:57:15 jmcneill Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
PTLIB_BUILDLINK3_MK:=	${PTLIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ptlib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nptlib}
BUILDLINK_PACKAGES+=	ptlib
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}ptlib

.if !empty(PTLIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.ptlib+=	ptlib>=2.6.1
BUILDLINK_ABI_DEPENDS.ptlib?=	ptlib>=2.6.1
BUILDLINK_PKGSRCDIR.ptlib?=	../../devel/ptlib
.endif	# PTLIB_BUILDLINK3_MK

.include "../../devel/SDL/buildlink3.mk"
.include "../../databases/openldap-client/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
