#!/bin/bash
#SPDX-FileCopyrightText: 2023 kouzou2111
#SPDX-License-Identifier: BSD-3-clause
ng () {
	echo NG at Line $1
	rtn=1
}
rtn=0

### 正常 ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

### 異常 ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $rtn
