# $NetBSD: Makefile,v 1.7 2012/10/08 12:19:25 asau Exp $
#

DISTNAME=	URI-imap-1.01
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=URI/}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Perl5 module for support of "imap" URI scheme objects

DEPENDS+=	p5-URI>=0:../../www/p5-URI

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/URI/imap/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
