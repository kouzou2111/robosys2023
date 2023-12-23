#!/usr/bin/bash  
# SPDX-FileCopyrightText:2023 kouzou2111
# SPDX-License-Identifier: BSD-3-clause
ng () {
      echo NG at Line $1
      rtn=1
}
rtn=0

### 正常なインプット###

out=$(./osaisen 1) #<-1~10000を入力、一例として1を入力。出力結果はランダム
 [ "$?" = 0 ] || ng ${LINENO} 
#<-出力結果が別のテーブルからランダムに出力されるためかテストが困難

### 間違ったインプット###

out=$(./osaisenl)
 [ "$?" = 127 ] || ng ${LINENO}
 [ "$out" = "" ] || ng ${LINENO}

out=$(./osaisen)
 [ "$?" = 0 ] || ng ${LINENO}
 [ "$out" =  '
ごみをいれるな!' ] || ng ${LINENO}

out=$(./osaisen)
 [ "$?" = 0 ] || ng ${LINENO}
 [ "$out" =  '
ごみをいれるな!' ] || ng ${LINENO}

out=$(./osaisen nisesatu)
 [ "$?" = 0 ] || ng ${LINENO}
 [ "$out" =  '
ごみをいれるな!' ] || ng ${LINENO}

out=$(./osaisen 子供銀行借用証)
 [ "$?" = 0 ] || ng ${LINENO}
 [ "$out" =  '
ごみをいれるな!' ] || ng ${LINENO}

out=$(./osaisen 1000円)
 [ "$?" = 0 ] || ng ${LINENO}
 [ "$out" =  '
ごみをいれるな!' ] || ng ${LINENO}

out=$(./osaisen 10001)
 [ "$?" = 0 ] || ng ${LINENO}
 [ "$out" =  '
こんなにもらえません!!' ] || ng ${LINENO}

[ "$rtn" = 0 ] && echo OK
exit $rtn
