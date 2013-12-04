# coding: utf-8
require "./scrapingHtml"
include MyScraping
data = DATA.read # __END__ 以降の部分はDATAから読む事ができる

data.scan(@@HTMLRegexp){|match|
	comment, tag, tdata = match[0..2]
	if comment then					# コメントにマッチした場合
		p [ "Comment", comment ]
	elsif tag then					# タグにマッチした場合
		p [ "Tag", tag ]
	elsif tdata then				# テキストデータにマッチした場合
		tdata.gsub!(/\s/, " ")		# 空白をまとめる
		tdata.sub!(/ $/, "")		# 末尾の空白を削除する
		p [ "TextData", data ] unless tdata.empty?
									# 空でなければ出力する
	end
}

__END__
<!DOCTYPE HTML>
<HTML lang="ja">
	<BODY>
		<A name="FOO" href="foo" attr >foo</A>
		<A name="BAR" href="bar" attr >bar</A>
		<A name="BAZ" href="baz" attr >baz</A>
		<!--
			<A href="dummy">dummy</A>		
		-->
	</BODY>
</HTML>
