use strict;
use warnings;
use utf8;

print "名前を入力してください：";
my $line = <STDIN>;
chomp($line);

print "成績を入力してください：";
my $seiseki = <STDIN>;
chomp($seiseki);

print "名前：$line, 成績：$seiseki\n";
