# coding: utf-8
# 全体のアクセス数を調べる

logFile = open("/var/log/apache2/access_log")
count = 0
while line = logFile.gets()
	count += 1
end
print "All access count: ", count, "\n"
