#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: dice.pl
#
#        USAGE: ./dice.pl  
#
#  DESCRIPTION: rolls some fucking dice
#
#      OPTIONS: NONE, AND YOU'LL LIKE IT THAT WAY 
# REQUIREMENTS: perl?
#         BUGS: all the bugs
#        NOTES: the worst code
#       AUTHOR: crimezone20xx
# ORGANIZATION: Nuclear Chemical Corp. 
#      VERSION: 0.1a
#      CREATED: 02/18/2014 11:15:14
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

print "How many dice?> ";
my $dice = int(<STDIN> - 1);

print "How many sides on each?> ";
my $sides = int(<STDIN> - 1);

if ($sides == -1 || $sides == 0) {
   print "You know, the laws of physics still apply";
   exit 0;
} else {
   $sides++;
}

my @total = qw();

for (my $rolls=0; $rolls <= $dice; $rolls++) {
	push (@total, int(rand($sides)) + 1 );
}

print join(" + ", @total),"\n";

my $sum = eval join '+', @total;
print $sum;
