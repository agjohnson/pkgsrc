# $NetBSD: buildlink3.mk,v 1.23 2012/02/06 12:39:48 wiz Exp $

BUILDLINK_TREE+=	devIL

.if !defined(DEVIL_BUILDLINK3_MK)
DEVIL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.devIL+=	devIL>=1.7.8
BUILDLINK_ABI_DEPENDS.devIL+=	devIL>=1.7.8nb6
BUILDLINK_PKGSRCDIR.devIL?=	../../devel/devIL

.include "../../devel/SDL/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/jasper/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/giflib.buildlink3.mk"
.include "../../graphics/mng/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.endif # DEVIL_BUILDLINK3_MK

BUILDLINK_TREE+=	-devIL
