#!/bin/bash -x

#ヒアドキュメント
x=10
cat << _EOM_
hi!
my name
is ueno

the value of
x is $x
_EOM_
