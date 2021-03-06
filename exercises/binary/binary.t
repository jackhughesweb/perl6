#!/usr/bin/env perl6
use v6;
use Test;
use lib $?FILE.IO.dirname;
use Binary;

plan 9;

ok Binary.can('to_decimal'), 'Class Binary has to_decimal method';

my %results = (
    1           => 1,
    10          => 2,
    11          => 3,
    100         => 4,
    1001        => 9,
    11010       => 26,
    10001101000 => 1128,
    'carrot23'  => 0,
);

for %results.sort {
    is Binary.to_decimal($_.key), $_.value, '"' ~ $_.key ~ '" returns ' ~ $_.value;
}
