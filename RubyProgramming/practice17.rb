# coding: utf-8

class Exchange
	@@rate = 100

	def self.rate
		return @@rate
	end

	def self.rate= rate
		@@rate = rate.to_f
	end

	def self.YtoD yen
		d = (yen / @@rate).to_i
		cl = yen % @@rate
		c = (cl / @@rate * 100).to_i
		return d.to_s + "ドル" +  c.to_s + "セント"
	end
	
	def self.DtoY (d, c)
		y1 = d * @@rate
		y2 = (c * @@rate) / 100
		y = (y1 + y2).to_i
		return y.to_s + "円"
	end
end

Exchange.rate = 85
d = Exchange.YtoD 12300
puts "12300円は" + d + "です"
y = Exchange.DtoY 123, 99
puts "123ドル99セントは" + y + "です"


