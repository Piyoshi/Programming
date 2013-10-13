# coding: utf-8

$counter = 0

def sayHello
	$counter += 1
	puts "Hello!(" + $counter.to_s + ")"
end

begin
	for n in 1..10
			sayHello
	end
rescue
	puts "エラーが発生したので終了します"
end
