# coding: utf-8

a = 2

case a
when 1
	puts "aは1"
when 2..5
	puts "aは四捨五入して0"
when 6..9
	puts "aは四捨五入して10"
else
	puts "それ以外"
end
