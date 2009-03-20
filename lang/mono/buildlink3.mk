# $NetBSD: buildlink3.mk,v 1.31 2009/03/20 19:24:50 joerg Exp $

BUILDLINK_TREE+=	mono

.if !defined(MONO_BUILDLINK3_MK)
MONO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mono+=	mono>=2.2
BUILDLINK_PKGSRCDIR.mono?=	../../lang/mono
ALL_ENV+=			MONO_SHARED_DIR=${WRKDIR:Q}

PRINT_PLIST_AWK+=	/^@dirrm lib\/mono\/gac$$/ \
				{ print "@comment in mono: " $$0; next; }
PRINT_PLIST_AWK+=	/^@dirrm lib\/mono$$/ \
				{ print "@comment in mono: " $$0; next; }

.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/icu/buildlink3.mk"
.endif # MONO_BUILDLINK3_MK

BUILDLINK_TREE+=	-mono
