
use strict;
use warnings;
use utf8;

print "サブルーチンのテスト\n";

&displayPersonal("うえの", 22, "京都");
my $BMI = &calcBMI(56, 1.65);
print "BMI = $BMI";

sub sub1{
    print "sub1の処理\n";
}

# 名前と年齢と住所を引数に与えると表示をするサブルーチン
sub displayPersonal{
    my ($name, $old, $address) = @_;

    print "名前は" . $name . "です\n";
    print "年齢は" . $old . "です\n";
    print "住所は" . $address . "です\n";
    
}

sub calcBMI{
   my ($weight, $height) = @_;
   return ($weight / ($height * $height));
}

