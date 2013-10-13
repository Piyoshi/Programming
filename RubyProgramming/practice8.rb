# coding: utf-8

begin
	# ここにプラオグラムを書きます
=begin
	a = Array.new
	a[0] = 1
	a[2] = 3
	a[3] = 4
	puts a
#=end
	b = Array.new(4)
	b[1] = 1
	b[2] = 2
	b[3] = 3
	b[4] = 4
	b[5] = 5
	puts b
=end
	c = [1, 2, 3, 4, 5]
	c[5] = 6
	total = 0
	for x in c
		total += x
		puts "x:" + x.to_s
	end
	puts "total:" + total.to_s

rescue
	# エラー時の対応処理を書きます
	puts "エラーが発生しました"
end
