class RingArray < Array
	def [](i)
		idx = i % size
		super(idx)
	end
end
