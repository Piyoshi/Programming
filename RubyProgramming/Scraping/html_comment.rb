# coding:utf-8
# htmlコメント解析

regexp0 = /<!--(.*)--\s*>/
regexp1 = /<!--(.*?)--\s*>/
data = "<!-- コメント１ --> データ <!-- コメント２ -->"

if data =~ regexp0
	printf "$&: '%s'\n", $&
	printf "$1: '%s'\n", $1
end

puts

if data =~ regexp1
	printf "$&: '%s'\n", $&
	printf "$1: '%s'\n", $1
end
