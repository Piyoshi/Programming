# coding: utf-8
require "./htmlScanner"

data = DATA.read # __END__ 以降の部分はDATAから読む事ができる

MyHTML.scan(data){|item|
	case item
	when MyHTML::Comment			# コメント
		p [ item.class, item.value ]
	when MyHTML::MarkUpDecl
		p [ item.class, item.value ]
	when MyHTML::StartTag			# 開始タグ
		p [ item.class, item.name, item.attribute ]
	when MyHTML::EndTag			# 終了タグ
		p [ item.class, item.name ]
	when MyHTML::TextData			# テキストデータ
		tdata = item.value
		tdata.gsub!(/\s+/, " ")	# 空白をまとめる
		tdata.sub!(/ $/, "")	# 末尾の空白を削除する
		p [ item.class, tdata ] unless tdata.empty?
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
