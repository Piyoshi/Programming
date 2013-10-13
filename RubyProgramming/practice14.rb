# coding:utf-8
#
# ruby学習プログラム
# written by Ueno

begin
	class C1
		@x1 = "ニックネーム"
		def setX1 name
			@x1 = name.to_s
		end
		def getX1
			return @x1
		end

		attr_accessor:x2

		def initialize name
			@name = name.to_s
			setX1 name
		end

		def hello
			puts "Hello " + @name + " !"
		end

		def bye
			puts "Bye " + @name + " !"
		end
	end

	instance = C1.new("Binshi")
	instance.hello
	instance.bye
	puts instance.getX1
	instance.x2 = "name2"
	puts instance.x2
rescue
	puts("エラーが発生しました")
end
