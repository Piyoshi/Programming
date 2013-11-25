# coding: utf-8
require "date"

module MyTimeDate
	# カレンダーを表示するメソッド
	def callender(date=Date.today)
		first = Date.new(date.year, date.month, 1)
		last = Date.new(date.year, date.month, -1)
		puts(date.strftime("    %B %Y"))
		puts("Su Mo Tu We Th Fr Sa")
		(first.wday - 1).times do; print "   "; end
		last.day.times do |d|
			if (first.wday + d) % 7 == 0 then
				printf("%2d \n", d + 1)
			else
				printf("%2d ", d + 1)
			end
		end
	end
end
