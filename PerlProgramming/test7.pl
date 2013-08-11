use strict;
use warnings;
use utf8;

my @seiseki;
$seiseki[0] = 80;
$seiseki[1] = 75;
$seiseki[2] = 54;

my @pref = qw/ 東京 大阪 名古屋　福岡 /;
my @range = (50..100);


for(my $i=0; $i<3; $i++){
   print "$pref[$i]\n";
}

for(my $i=0; $i<@seiseki; $i++){
   print $seiseki[$i]>70 ? "$seiseki[$i]\n" : "\n"; 
}

for(my $i=0; $i<@range; $i++){
    print "$range[$i] ";
}

