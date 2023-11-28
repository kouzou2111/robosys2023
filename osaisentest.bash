#!/usr/bin/bash  
# SPDX-FileCopyrightText:2023 kouzou2111
# SPDX-License-Identifier: BSD-3-clause
ng () {
      echo NG at Line ${1}
      res=1
}
res=0

### 正常なインプット###

out=$(./osaisen 1) #<-1~10000を入力、一例として1を入力。出力結果はランダム
 [ "${out}" = "\nどうも\n おみくじの結果：$omikuzi \n相性がいい星座：$seiza \n相性がいい血液型：$ketueki \nラッキーカラー：$color \nラッキーアイテム：$item" ] || ng ${LINENO} #<-出力結果が別のテーブルからランダムに出力されるためかテストが困難
 #[ "${out}" = "おみくじの結果：$omikuzi" ] || ng ${LINENO}
 #[ "${out}" = "相性がいい星座：$seiza" ] || ng ${LINENO}
 #[ "${out}" = "相性がいい血液型：$ketueki" ] || ng ${LINENO}
 #[ "${out}" = "ラッキーカラー：$color" ] || ng ${LINENO}
 #[ "${out}" = "ラッキーアイテム：$item" ] || ng ${LINENO}

### 間違ったインプット###

out=$(./osaisen nisesatu)
 [ "$?" = 0 ] || ng ${LINENO}
 [ "$out" = "ごみをいれるな!" ] || ng ${LINENO}

out=$(./osaisen 子供銀行借用証)
 [ "$?" = 0 ] || ng ${LINENO}
 [ "$out" = "ごみをいれるな!" ] || ng ${LINENO}

out=$(./osaisen 1000円)
 [ "$?" = 0 ] || ng ${LINENO}
 [ "$out" = "ごみをいれるな!" ] || ng ${LINENO}

out=$(./osaisen 10001)
 [ "$?" = 1 ] || ng ${LINENO}
 [ "$out" = "こんなにもらえません!!" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
