use 5.10.1;
use strict;
use warnings;

package MooseX::AttributeDocumented;

# ABSTRACT: Add Documented trait to all to attributes
# AUTHORITY
our $VERSION = '0.1005';

use Moose;
use Moose::Exporter;

Moose::Exporter->setup_import_methods(
    class_metaroles => {
        attribute => ['MooseX::AttributeDocumented::Meta::Attribute::Trait::Documented'],
    },
);

__END__

=pod

=head1 SYNOPSIS

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

=head1 DESCRIPTION

Adds the L<Documented|MooseX::AttributeDocumented> trait to all attributes in the class.

=head1 SEE ALSO

=for :list
* L<Moose>

=cut
