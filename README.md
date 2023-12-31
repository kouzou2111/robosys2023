# robosys2023
[![test](https://github.com/kouzou2111/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/kouzou2111/robosys2023/actions/workflows/test.yml)

2023年ロボットシステム学講義用リポジトリ

## コマンド使用までの手順
下記のコードをホームディレクトリでクローンすることで利用できます
```
git clone https://github.com/kouzou2111/robosys2023.git
```
㏅コマンドを使いrobosys2023ディレクトリに移動してください
```
cd robosys2023
```
使用したいコマンドを下記の方法で選択してください

## リポジトリ内で使用できるコマンド

・plus

・osaisen

## plusコマンドの概要

標準入力から読み込んだ数値を足す

## 使用方法

```bash
$ seq 10 | ./plus
55
```
## osaisenコマンドの概要

標準入力から数字(1~10000)を読み込むとおみくじ、相性のいい星座、相性のいい血液型、ラッキーカラー、ラッキーアイテムを独立したファイルからランダムで取り出し出力する。
（ヒント：貢ぐお金の額によって若干排出されるおみくじの確率が変動する）

## 使用方法

```bash
$ ./osaisen 500 # <-1~10000 円入れる、例として500を入れる

どうも

おみくじの結果： 末吉

相性がいい星座： 水瓶座

相性がいい血液型： O型

ラッキーカラー： 茶色

ラッキーアイテム： 本
```


## 動作環境
### 必要なソフトウェア　

* python
  * テスト済み: 3.7~3.10


### テスト環境
* Ubuntu 20.04 on Windows

## ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
    * このパッケージのosaisen,omikuzi.txt,omikuzi2.txt,omikuzi3.txt,omikuzi4.txt,ketueki.txt,color.txt,item.txt,osaisentest.bash以外のコマンドとコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
         * [ryuichiueda/my_slides robosys_2022](https://ryuichiueda.github.io/my_slides/robosys_2022/lesson3.html#/12)
    * © 2023 kouzou2111
