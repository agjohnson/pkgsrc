# $NetBSD: Makefile,v 1.9 2012/10/31 11:18:14 asau Exp $
#

DISTNAME=	File-Which-1.09
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/File-Which/
COMMENT=	Portable implementation of the 'which' utility
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

BUILD_DEPENDS+=		p5-Test-Script>=1.05:../../devel/p5-Test-Script
BUILD_DEPENDS+=		p5-Test-Simple>=0.80:../../devel/p5-Test-Simple

PERL5_PACKLIST=		auto/File/Which/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
