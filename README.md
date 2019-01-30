# NAME

MooseX::AttributeDocumented - Add Documented trait to all to attributes

<div>
    <p>
    <img src="https://img.shields.io/badge/perl-5.10.1+-blue.svg" alt="Requires Perl 5.10.1+" />
    <a href="https://travis-ci.org/Csson/p5-MooseX-AttributeDocumented"><img src="https://api.travis-ci.org/Csson/p5-MooseX-AttributeDocumented.svg?branch=master" alt="Travis status" /></a>
    <a href="http://cpants.cpanauthors.org/release/CSSON/MooseX-AttributeDocumented-0.1004"><img src="http://badgedepot.code301.com/badge/kwalitee/CSSON/MooseX-AttributeDocumented/0.1004" alt="Distribution kwalitee" /></a>
    <a href="http://matrix.cpantesters.org/?dist=MooseX-AttributeDocumented%200.1004"><img src="http://badgedepot.code301.com/badge/cpantesters/MooseX-AttributeDocumented/0.1004" alt="CPAN Testers result" /></a>
    <img src="https://img.shields.io/badge/coverage-100.0%-brightgreen.svg" alt="coverage 100.0%" />
    </p>
</div>

# VERSION

Version 0.1004, released 2019-01-30.

# SYNOPSIS

    package The::Class;

    use Moose;
    use MooseX::AttributeDocumented;

    has gears => (
        is => 'ro',
        isa => 'Int',
        default => 21,
        documentation => 'Number of gears on the bike',
        documentation_order => 2,
    );
    has has_brakes => (
        is => 'ro',
        isa => 'Bool',
        default => 1,
        documentation => 'Does the bike have brakes?',
        documentation_alts => {
            0 => 'Hopefully a track bike',
            1 => 'Always nice to have',
        },
    );

# DESCRIPTION

Adds the [Documented](https://metacpan.org/pod/MooseX::AttributeDocumented) trait to all attributes in the class.

# SEE ALSO

- [Moose](https://metacpan.org/pod/Moose)

# SOURCE

[https://github.com/Csson/p5-MooseX-AttributeDocumented](https://github.com/Csson/p5-MooseX-AttributeDocumented)

# HOMEPAGE

[https://metacpan.org/release/MooseX-AttributeDocumented](https://metacpan.org/release/MooseX-AttributeDocumented)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Erik Carlsson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
