# NAME

MooseX::AttributeDocumented - Add Documented trait to all to attributes

# VERSION

Version 0.1002, released 2015-01-13.

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

This software is copyright (c) 2015 by Erik Carlsson <info@code301.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
