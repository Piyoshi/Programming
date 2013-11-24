module MyFileDir
	# cpコマンドを実装するメソッド
	def copy(from, to)
		open(from){|input|
			open(to, "w"){|output|
				output.write(input.read)
			}
		}

	end
	
	# 指定したディレクトリ以下のファイルパスを全て表示するメソッド
	def traverse(path)
		if FileTest.directory?(path)	# ディレクトリの場合
			dir = Dir.open(path)
			while name = dir.read do
				next if name == "."
				next if name == ".."
				traverse(path + "/" + name)
			end
			dir.close
		else
			process_file(path)	# ファイルに対する処理
		end
	end

	# とりあえず表示するだけのメソッド
	def process_file(path)
		puts(path)
	end

	# Rubyが利用できるライブラリのファイル名を出力するメソッド
	def print_libraries
		$:.each do |library|
			directory = Dir.glob(library + "/*")
			directory.each do |file|
				puts "#{file}"
			end
		end
	end
end
