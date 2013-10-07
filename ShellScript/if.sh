#!/bin/bash -x

#if文
x=60
if test $x -gt 60; then
	echo "ok!"
elif [ $x -gt 40 ]; then
	echo "ng..."
else
	echo "soso..."
fi


# 条件の評価
# 正常終了(0)したかどうか

# 数値の評価
test 1 -eq 1; echo $?
# -eq  ==
# -ne  !=
# -gt  >
# -ge  >=
# -lt  <
# -le  <=

# 文字列の比較
# =
# !=

# ファイルの比較
# -nt(newer than)
# -ot(older than)
# -e(exist)
# -d(idDirectory)
test -e hello.sh; echo $?

# 論理演算子
# -a(and)
# -o(or)
# !
test 1 -eq 1 -a 2 -eq 2; echo $?
