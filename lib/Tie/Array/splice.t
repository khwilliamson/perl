#!./perl

BEGIN {
    chdir 't' if -d 't';
    @INC = '.'; 
    push @INC, '../lib';
}

# bug id 20001020.002 (#4480)
# -dlc 20001021

use Tie::Array;
tie my @a, 'Tie::StdArray';
undef *Tie::StdArray::SPLICE;
require "op/splice.t"

# Pre-fix, this failed tests 6-9
