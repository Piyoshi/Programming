# coding: utf-8
t0 = Time.now
open("./kyoto.csv").each{|line|
	line.chomp!
	line.split(",")
}
p Time.now - t0
