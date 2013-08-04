use strict;
use warnings;
use utf8;

my @array	= ("1", "2", "3");
my @array2	= (1..5,6);

my $length1	= @array;
my $length2	= @array2;

print "要素数1:$length1\n";
print "要素数2:$length2\n";

print "\@array=" . "@array";
print "\n\@array2=@array2\n";
