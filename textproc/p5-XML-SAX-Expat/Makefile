# $NetBSD: Makefile,v 1.19 2012/10/25 06:56:39 asau Exp $

DISTNAME=	XML-SAX-Expat-0.40
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
SVR4_PKGNAME=	p5xse
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/XML-SAX-Expat/
COMMENT=	Perl SAX2 XML driver sitting on top of Expat (XML::Parser)

DEPENDS+=	p5-XML-NamespaceSupport>=0.03:../../textproc/p5-XML-NamespaceSupport
DEPENDS+=	p5-XML-SAX>=0.03:../../textproc/p5-XML-SAX
DEPENDS+=	p5-XML-Parser>=2.27:../../textproc/p5-XML-Parser

MAKE_ENV+=	SKIP_SAX_INSTALL=yes
PERL5_PACKLIST=	auto/XML/SAX/Expat/.packlist

FILES_SUBST+=	PERL5_INSTALLVENDORLIB=${PERL5_INSTALLVENDORLIB:Q}

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
