#!/bin/bash -xv
# SPDX-FileCopyrightText:2023 kouzou2111
# SPDX-License-Identifier: BSD-3-clause
ng () {
      echo NG at Line ${1}
      res=1
}
res=0

### 正常なインプット###

out=$(./osaisen 1) #<-1~10000を入力、一例として1を入力。出力結果はランダム
 [ "${out}" = 'どうも' ] || ng ${LINENO}

out=$(./osaisen ５０００)
 [ "${out}" =  ] || ng ${LINENO}

### 間違ったインプット###

out=$(./osaisen nisesatu)
 [ "$?" = 1 ] || ng ${LINENO}
 [ "${out}" = 'ごみをいれるな!' ] || ng ${LINENO}

out=$(echo ./osaisen 子供銀行借用証)
 [ "$?" = 1 ] || ng ${LINENO}
 [ "${out}" = 'ごみをいれるな!' ] || ng ${LINENO}

out=$(echo ./osaisen 1000円)
 [ "$?" = 1 ] || ng ${LINENO}
 [ "${out}" = 'ごみをいれるな!' ] || ng ${LINENO}

out=$(echo ./osaisen 10001)
 [ "$?" = 0 ] || ng ${LINENO}
 [ "${out}" = 'こんなにもらえません!!' ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
