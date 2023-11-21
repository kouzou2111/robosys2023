import random
def get_random_data(filename):
    with open(filename, 'r') as file:
        data = file.readlines()
        return random.choice(data)
