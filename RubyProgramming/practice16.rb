# coding: utf-8

class Integer
	def isPrime
		h = self / 2
		flg = true 
		for i in 2..h
			if self % i == 0 then
				flg = false
			end
		end
		return flg
	end
end

checkNumber = 101
if checkNumber.isPrime then
	puts "checkNumber: " + checkNumber.to_s + "は素数です"
else
	puts "checkNumber: " + checkNumber.to_s + "は素数ではありません"
end

