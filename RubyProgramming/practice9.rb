# coding: utf-8

begin
=begin
	A = Hash.new
	A["test"] = 9
	puts A["test"]
#=end
	B = {	"test" => "test",
			"test2" => 2,
			"test3" => 3,
			4 => "4"
		}
	B["test5"] = 5
	B[6] = 6
	puts B
=end
	C = {:a => 6}
	puts C
rescue
	puts "エラーが起ったので終了します"
end
