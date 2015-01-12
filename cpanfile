requires 'perl', '5.010001';

requires 'Moose', '2.0000';
requires 'Moose::Exporter';
requires 'Moose::Role';

on test => sub {
	requires 'Test::More', '0.96';
};
