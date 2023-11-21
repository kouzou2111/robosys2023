#!/bin/bash
# SPDX-FileCopyrightText:2023 kouzou2111
# SPDX-License-Identifier: BSD-3-clause

import random

def get_random_data(filename):
    with open(filename, 'r') as file:
        data = file.readlines()
        return random.choice(data)

#def main():
try:
    num = int(input("1~10000 円入れてください"))
    if num == 0:
        print("帰れ！")
    elif 1 <= num <= 500:
        print("どうも\n")
        omikuzi = get_random_data("omikuzi.txt")
        print("おみくじの結果：",omikuzi)
    elif 501 <= num <= 3000:
        print("ありがとうございます\n")
        omikuzi2 = get_random_data("omikuzi2.txt")
        print("おみくじの結果：",omikuzi2)
    elif 3001 <= num <= 8000:
        print("ありがとうございます!\n")
        omikuzi3 = get_random_data("omikuzi3.txt")
        print("おみくじの結果：",omikuzi3)
    elif 8001 <= num <= 10000:
        print("ありがとうございます!!\n")
        omikuzi4 = get_random_data("omikuzi4.txt")
        print("おみくじの結果：",omikuzi4)
    elif 10001 <= num:
        print("こんなにもらえません!!")
    else :
        raise ValueError("数字以外が入力されました")
    if 1 < num <= 10000:
        seiza = get_random_data("seiza.txt")
        print("相性がいい星座：",seiza)
        
        ketueki = get_random_data("ketueki.txt")
        print("相性がいい血液型：",ketueki)
        
        color = get_random_data("color.txt")
        print("ラッキーカラー：",color)
        
        item = get_random_data("item.txt")
        print("ラッキーアイテム：",item)
except ValueError as e:
    print("ごみをいれるな!")
