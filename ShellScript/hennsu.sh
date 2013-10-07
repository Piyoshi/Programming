#!/bin/bash -x

#変数

s="hello"

echo $s
echo '$s'
echo "${s}"
echo $s$s
echo "$s $s"

x=5
printf "i have [%-5d] apples\m" $x
