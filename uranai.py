#!/bin/bash
# SPDX-FileCopyrightText:2023 kouzou2111
# SPDX-License-Identifier: BSD-3-clause

import random

def get_random_data(filename):
    with open(filename, 'r') as file:
        data = file.readlines()
        return random.choice(data)

#num = int(input("1~10000 円入れてください"))

#def main():
num = int(input("1~10000 円入れてください"))

if num == 0:
    print("帰れ！")
else:
    if 1 <= num <= 500:
        print("どうも")
        omikuzi = get_random_data("omikuzi.txt")
        print("おみくじの結果：",omikuzi)
    elif 501 <= num <= 3000:
        print("ありがとうございます")
        omikuzi2 = get_random_data("omikuzi2.txt")
        print("おみくじの結果：",omikuzi2)
