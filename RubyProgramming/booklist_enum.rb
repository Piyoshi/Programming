# coding: utf-8

class BookList
	include Enumerable
	def each
		@booklist.each{|book|
			yield(book)
		}
	end
end
