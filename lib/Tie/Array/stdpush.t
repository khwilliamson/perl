#!./perl

BEGIN {
    chdir 't' if -d 't';
    @INC = '.'; 
    push @INC, '../lib';
}

use Tie::Array;
tie my @x, 'Tie::StdArray';
require "op/push.t"
