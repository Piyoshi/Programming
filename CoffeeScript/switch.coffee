# switch

signal = "red"

switch signal
	when "red"
		alert "stop!"
	when "green"
		alert "go!"
	else
		alert "caution"
