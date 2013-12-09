# 関数

# var hello = function(){ alert("hello"); }
hello = (name = "satoshi") ->
	alert "hello, #{name}"

"sum = function(a, b){ return (a + b); };"
sum = (a, b) ->
	a + b

hello
alert (sum 3, 5)
