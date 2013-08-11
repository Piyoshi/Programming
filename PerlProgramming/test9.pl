use strict;
use warnings;
use utf8;

my %hash;

$hash{'key1'} = "キー1";
$hash{'key2'} = "キー2";
$hash{'key3'} = 3;

print $hash{'key1'} . "\n";
print $hash{'key2'} . "\n";
print $hash{'key3'} . "\n";

my %hash2 = (
    'key1' => "キー1",
    'key2' => "キー2",
    'key3' => "キー3"
);

for(my $i=1; $i<=3; $i++){
    my $keyName = "key" . $i;
    print "$hash2{$keyName}\n";
}

foreach my $key(keys(%hash2)){
    print "$hash2{$key} ";
}
