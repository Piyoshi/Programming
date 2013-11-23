# coding: utf-8

module MyString
	# 文字列の長さを求めるメソッド(UTF-8)
	def strlen(str)
		return str.split(//u).length
	end

	# 文字列の配列を大文字と小文字の区別をせずにアルファベット順にソートするメソッド
	def wordSort(wordArray)
		return wordArray.sort_by do |word|; word.downcase; end
	end

	# 単語の配列に含まれる単語を全て先頭が大文字の配列にするメソッド
	def capitalizedArray(wordArray)
		result = []
		wordArray.each do |word|; result.push(word.capitalize); end
	end

	# 文字列に含まれる文字を数え表示するメソッド
	def countCharacter(string)
		counter = Hash.new(0)
		charArray = string.split(//u)
		charArray.each do |char|; counter[char] += 1; end
		wordCount counter
		return counter
	end

	# hashで数えられた文字を表示するメソッド
	def wordCount(counter)
		counter.each do |char, count|
			print char, ": "
			count.times do; print "*"; end
			puts ""
		end
	end
end
