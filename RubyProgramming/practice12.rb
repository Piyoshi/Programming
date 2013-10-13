# coding:utf-8

begin
	A = [3,4,5,6,78,8]
	A . each do |x|
			puts "x:" + x.to_s
	end

	B = {:a=>1, :b=>2, :c=>3, :d=>4 }
	B . each do |x1, x2|
			puts "x1:" + x1.to_s; puts "x2:" + x2.to_s
	end
rescue
	puts "エラーが発生したので終了します"
end
