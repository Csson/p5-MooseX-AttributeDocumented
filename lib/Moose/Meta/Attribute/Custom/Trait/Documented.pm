use 5.10.1;
use strict;
use warnings;

package Moose::Meta::Attribute::Custom::Trait::Documented;

# ABSTRACT: Register the trait
# AUTHORITY
our $VERSION = '0.1005';

sub register_implementation {
    return 'MooseX::AttributeDocumented::Meta::Attribute::Trait::Documented';
}

1;
