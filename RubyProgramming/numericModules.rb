# coding: utf-8

module MyNumeric
	# ダイスメソッド(ランダムに1~6の数字を返す)
	def dice
		return (rand(6) + 1)
	end

	# 素数判定メソッド
	def prime?(num)
	begin
		unless (num.class == Fixnum || num.class == Bignum); raise "引数が整数ではありません"; end
		unless (num > 1) then return false; end
		2.upto(num - 1){|i|
				if (num % i == 0); return false; end
		}
	rescue => e
		puts e
		return false
	end
		return true
	end

	module_function :dice
	module_function :prime?
end
