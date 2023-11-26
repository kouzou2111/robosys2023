#!/bin/bash
# SPDX-FileCopyrightText:2023 kouzou2111
# SPDX-License-Identifier: BSD-3-clause
ng () {
      echo NG at Line $1
      ret=1
}
ret=0

### 正常なインプット###

out=$(./osaisen 1) #<-1~10000を入力、一例として1を入力。出力結果はランダム
[ "${out}" = "\nどうも\n""おみくじの結果：",omikuzi"相性がいい星座：",seiza"相性がいい血液型：",ketueki"ラッキーカラー：",color"ラッキーアイテム：",item ] || ng ${LINENO}

out=$(./osaisen ５０００)
[ "${out}" = ありがとうございます! ] || ng ${LINENO}

### 間違ったインプット###

out=$(./osaisen nisesatu)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = ごみをいれるな! ] || ng ${LINENO}

out=$(./osaisen 子供銀行借用証)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = ごみをいれるな! ] || ng ${LINENO}

out=$(./osaisen 1000円)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = 'ごみをいれるな!' ] || ng ${LINENO}

out=$(./osaisen 10001)
[ "$?" = 0 ] || ng ${LINENO}
[ "${out}" = こんなにもらえません!! ] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $ret
