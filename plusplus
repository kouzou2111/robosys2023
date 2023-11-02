#!/bin/bash
# SPDX-FileCopyrightText:2023 kouzou2111
# SPDX-License-Identifier: BSD-3-clause

ng () {
          echo ${1}行目が違うよ   #$1はngの1番目の引数
          ret=1                   #最後に返す終了ステータスをセット
  }
ret=0

### 入出力テスト ###
out=$(seq 5 | ./plus)
[ "${out}" = 14 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK        # &&（AND記号）は左側が成功すると右側を実行
exit $res
