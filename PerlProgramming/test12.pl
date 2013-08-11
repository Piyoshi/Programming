use strict;
use warnings;
use utf8;

&displayScore($ARGV[0], $ARGV[1], $ARGV[2]);

sub displayScore
{
    my ($kokugo, $suugaku, $eigo) = @_;
    printf("国語の点数：% 3d\n", $kokugo);
    printf("数学の点数：% 3d\n", $suugaku);
    printf("英語の点数：% 3d\n", $eigo);

    printf("合計得点：% 3d\n", ($kokugo + $suugaku + $eigo));
}
