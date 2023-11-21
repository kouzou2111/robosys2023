#!/bin/bash
# SPDX-FileCopyrightText:2023 kouzou2111
# SPDX-License-Identifier: BSD-3-clause

import random
def get_random_data(filename):
    with open(filename, 'r') as file:
        data = file.readlines()
        return random.choice(data)

