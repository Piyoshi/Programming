class HelloWorld
	@@count = 0
	attr_accessor :length
	def initialize(myname="Ruby")
		@name = myname
		@length = @name.length
	end

	def hello
		@@count += 1
		print "Hello, world. I am ", @name, ".\n"
	end

	def name
		return @name
	end

	def name=(value)
		@name = value
	end

	def self.hello2(name="World")
		print "Fuck, You ", name, "!!!!!\n"
	end

	def self.count
		@@count
	end
end


