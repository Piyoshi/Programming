use strict;
use warnings;
use utf8;

my @str = ("1月", "2月", "6月");

$str[$#str] = "3月";

for(my $i=0; $i<@str; $i++){
    print"$str[$i]";
}

