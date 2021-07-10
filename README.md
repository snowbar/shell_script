# shell_script
適宜必要になって作ったシェルスクリプト(主にbash)を配置している。
個人の利用目的で作成したため、例外処理は省いている。
## 導入方法
1. 任意の場所にこのディレクトリを配置し、パスを通す（ex: /opt/）。
2. 実行権限を付与する。
## 各種プログラム概要
### addTexSlash.sh
* 目的：プレーンテキストをTeXにコピーすると、改行されなかったので対応するため。
* 動作：各行に対し、改行（\\）を追加する。
* 使い方：第一引数に特定の文書ファイルを指定。その後、他ファイルにリダイレクトする。
### mktex.sh
* 目的：TeXファイルのコンパイル等を手作業でやるのが面倒だから。
* 動作：platex を二回、dvipdfmx　を一回行い、いらないファイルを消す。
* 使い方：第一引数にpdf化したいファイルを指定する。
### wordcount.sh
* 目的：就活などの文字数制限付き文書の下書きをする時、数えるのが面倒だから作成した。
* 動作：ファイル内の文字数をカウントする（日本語、半角全角英語、数字）それぞれ一文字として認識し、総文字数を出力する）。for文内での処理により、改行文字や空白文字はエスケープされるが、全角の空白は一文字としてカウントされてしまう。
* 使い方：カウントしたいファイルを第一引数に指定する。
