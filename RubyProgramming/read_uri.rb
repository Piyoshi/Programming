require "open-uri"

open("https://www.ruby-lang.org"){|io|
	puts io.read
}
