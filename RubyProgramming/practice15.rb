# coding: utf-8
#
# Studying Ruby Programming
# coding by Ueno

begin
	# Memberクラス
	class Member
		def initialize name
			@name = name.to_s
		end
		def hello
			puts "Hello," + @name + "!"
		end
		def bye
			puts "Bye," + @name + "!"
		end
	end

	# PowerMemberクラス(Memberを継承)
	class PowerMember < Member
		def initialize (name, age)
			@name = name.to_s
			@age = age.to_i
		end
		def hello
			puts "Hello, I am " + @name + "." +
				"\nI'm " + @age.to_s + " years old!"
		end
	end

	taro = Member.new "太郎"
	hanako = PowerMember.new "花子", 24
	taro.hello
	hanako.hello
	taro.bye
	hanako.bye
rescue
	puts "エラーが発生しました"
end
