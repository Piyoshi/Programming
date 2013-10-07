#!/bin/bash -x

# 配列

a=(2 4 6)
echo $a
echo ${a[1]}

echo ${a[@]}
echo ${#a[@]}

a[2]=10
echo ${a[@]}

a+=(20 30)
echo ${a[@]}


d=(`date`)
echo $d
echo ${d[@]}
