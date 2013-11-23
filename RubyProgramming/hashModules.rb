# codign: utf-8
module MyHash
	# 空白とタブ,改行を含む文字列をHashにして返す
	def str2hash(str)
		result = Hash.new
		arr = str.split(/\s+/)
		((arr.length+1)/2).times{|i|
			result.store(arr[2*i], arr[2*i+1])
		}
		return result
	end
end
