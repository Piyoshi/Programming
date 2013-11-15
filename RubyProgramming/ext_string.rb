class String
	def count_word
		ary = self.split(/\s+/)
		return ary.size
	end
end
