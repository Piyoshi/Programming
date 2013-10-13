#coding: utf-8

begin
	data = {"国語" => 87, "算数" => 74, "理科" => 89, "社会" => 91}
	total = 0

	for tensu in data
		puts tensu[0].to_s + ": " +
				tensu[1].to_s
		total += tensu[1]
	end

	heikin = total / 4
	puts "平均: " + heikin.to_s

rescue
	puts "エラーが発生したので終了します"
end
