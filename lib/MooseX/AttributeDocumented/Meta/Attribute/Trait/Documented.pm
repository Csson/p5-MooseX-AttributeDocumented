use 5.10.1;
use strict;
use warnings;

package MooseX::AttributeDocumented::Meta::Attribute::Trait::Documented;

# ABSTRACT: Add documentation to attributes
# AUTHORITY
our $VERSION = '0.1005';

use Moose::Role;
#Moose::Util::meta_attribute_alias('Documented');
use MooseX::Types::Moose qw/HashRef Str Int/;
use namespace::clean -except => 'meta';

has documentation_alts => (
    is => 'rw',
    isa => HashRef,
    predicate => 'has_documentation_alts',
);

has documentation_default => (
    is => 'rw',
    isa => Str,
    predicate => 'has_documentation_default',
);

has documentation_order => (
    is => 'rw',
    isa => Int,
    default => 1000,
    predicate => 'has_documentation_order',
);

no Moose::Role;

1;

__END__

=pod

=head1 SYNOPSIS

    use Moose;

    has gears => (
        is => 'ro',
        isa => 'Int',
        default => 21,
        traits => ['Documented'],
        documentation => 'Number of gears on the bike',
        documentation_order => 2,
    );
    has has_brakes => (
        is => 'ro',
        isa => 'Bool',
        default => 1,
        traits => ['Documented'],
        documentation => 'Does the bike have brakes?',
        documentation_alts => {
            0 => 'Hopefully a track bike',
            1 => 'Always nice to have',
        },
    );
    has undocumented_attr => (
        is => 'ro',
        isa => Str,
        default => 'other',
    );


=head1 DESCRIPTION

L<Moose> already has C<documentation>, this trait adds the following to the attribute specification:

=head2 documentation_alts

A hash reference. Describe the effect of different values, eg. on booleans.

=head2 documentation_default

A string. If the default value is a code ref you can describe it in this field.

=head2 documentation_order

An integer. Defaults to C<1000>.

=cut
