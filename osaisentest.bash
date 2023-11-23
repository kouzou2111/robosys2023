#!/bin/bash -xv
# SPDX-FileCopyrightText:2023 kouzou2111
# SPDX-License-Identifier: BSD-3-clause
ng () {
          echo NG at Line ${1}
          ret=1
}
ret=0

### 正常なインプット###

out=$(./uranai[0])
#[ "${out}" = 1~10000 円入れてください\n] || ng ${LINENO}  
#out=$(0)
[ "${out}" = "帰れ！"] || ng ${LINENO}
#out=$(10001)
#[ "${out}" = "こんなにもらえません!!"] || ng ${LINENO}
  　
### 間違ったインプット###

out=$(a)
[ "$?" = 1]
[ "${out}" = "ごみをいれるな!"] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $ret
