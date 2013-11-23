# coding: utf-8

module MyRegexp
	# メールアドレスであるか確認し，ローカルアドレスとドメイン名を表示するメソッド(ローカルアドレス@ドメイン名)
	def matcheAddress?(address)
		re = %r|^([^@]+)@([^@]+)|
		unless re =~ address then; return false; end
		print "local: ", $1, "\n"
		print "domain: ", $2, "\n"
		return true
	end

	# -で繋がっている単語列をCapitalizeするメソッド
	def word_capitalize(str)
		result = String.new
		str.scan(/([-])?([A-Za-z]+)/){|key, matched|
			unless key then; key = ""; end
			result << key << matched.capitalize;
		}
		return result
	end
end
