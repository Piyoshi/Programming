# coding : utf-8

begin
	total = 0
	for n in 1...100
		total += n
	end
	puts "total" + total.to_s
rescue
	puts "エラーが発生したので終了します"
end
