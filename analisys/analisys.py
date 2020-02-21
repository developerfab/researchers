import pandas as pd

path = 'data/INVESTIGADORES_RECONOCIDOS_2019.csv'

data = pd.read_csv(path)

for name in data:
    print(name)
