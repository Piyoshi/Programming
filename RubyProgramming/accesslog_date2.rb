# coding: utf-8
# 日ごとのアクセス数を調べる・日付の出力

MONTH = {'jan' => 1, 'feb' => 2, 'mar' => 3, 'apr' => 4, 'may' => 5, 'jun' => 6, 'jul' => 7, 'aug' => 8, 'sep' => 9, 'oct' => 10, 'nov' => 11, 'dec' => 12}
logFile = open("/var/log/apache2/access_log")

while line = logFile.gets()
	datetime = line.chomp.split(/\s/)[3]
	if %r|\[(\d+)/(\w+)/(\d+)| =~ datetime
		day, month, year = $1, MONTH[$2.downcase], $3
		print "#{year}/#{month}/#{day}\n"
	end
end
