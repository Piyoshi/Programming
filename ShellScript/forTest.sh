#!/bin/bash -x

#for

a=(1 2 3 4 5)

for i in ${a[@]}; do
	echo $i
done


for i in `seq 1 100`; do
	echo $i
done
