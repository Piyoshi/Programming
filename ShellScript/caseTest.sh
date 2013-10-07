#!/bin/bash -x

#case

signal="green"

case $signal in
	"red")
		echo "stop"
		;;
	"yellow")
		echo "caution!"
		;;
	"green")
		echo "go!"
		;;
	*)
		echo "..."
		;;
esac
