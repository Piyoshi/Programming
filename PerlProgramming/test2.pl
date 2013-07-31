=pod
perlプログラムtest2
キーワード「画面出力」「変数」
=cut

use strict;
use warnings;
use utf8;

# binmode STDIN, ':encoding(cp932)';
# binmode STDOUT, ':encoding(cp932)';
# binmode STDERR, ':encoding(cp932)';

#このブロックにだけ(my)有効なスカラー($)変数strを作成
my $str = "こんにちは\n";
my $name = "太郎";

print $str;
print $name;
print "こんにちは $name さん\n";

my $count = 5;
for(; $count > 0; $count--){
        print "Hello, ${name}san\n";
}
