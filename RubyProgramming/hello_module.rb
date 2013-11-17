module HelloModule
	Version = "1.0"
	def hello(name)
		print "Hello, ", name, ".\n"
	end
	def foo
		p self
		return self
	end
	module_function :hello
end

class Test
	include HelloModule
	attr_accessor :name
	def initialize(myname="Ruby")
		@name = myname
	end
end

p HelloModule::Version
HelloModule.hello("Alice")
test = Test.new
p test.name
