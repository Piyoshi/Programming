pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = open(filename)
i = 1
while text = file.gets do
	if pattern =~ text
		print i, ": ", text, "\n"
	end
	i += 1
end
file.close
