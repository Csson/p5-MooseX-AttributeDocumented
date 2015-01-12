use 5.10.1;
use strict;
use warnings;

package Moose::Meta::Attribute::Custom::Trait::Documented;

# VERSION
# ABSTRACT: Register the trait

sub register_implementation {
    return 'MooseX::AttributeDocumented::Meta::Attribute::Trait::Documented';
}

1;
