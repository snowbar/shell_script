#!/bin/bash


#word=`cat sample.txt`
#word_count=`echo -n ${word} | wc -m`
#echo ${word_count}
#echo ${#word}

#ファイル内の文字数をカウントする
#echo -n で改行文字を抜いて出力
#wc -m で半角全角関係なく文字数を出す
#半角空白でfor文の区切りがあるので、全角空白に関しては文字数としてカウントする。

filename=$1
sum=0
tmp=0
for L in $(cat ${filename})
do
    tmp=`echo -n $L | wc -m`
    sum=`echo $(( $sum+$tmp ))`
done
echo ${sum}
