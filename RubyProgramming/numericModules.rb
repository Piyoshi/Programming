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

	# 配列の和計算メソッド
	def sum_array(num1, num2)
		result = []
		num1.zip(num2) do |elem1, elem2|
			result.push(elem1 + elem2)
		end
		return result
	end

	# 配列で入ってきた括弧の対応関係をチェックするメソッド
	def balanced?(strArray)
		stack = []
		strArray.each do |elem|
			if stack.empty?
				stack.push(elem); next
			end
			
			case elem
				when ")" then
					if stack.last == "("
						stack.pop; next
					end
				when "}" then
					if stack.last == "{"
						stack.pop; next
					end
				else
			end
			stack.push(elem)
		end

		return stack.empty?
	end

	module_function :dice
	module_function :prime?
end
