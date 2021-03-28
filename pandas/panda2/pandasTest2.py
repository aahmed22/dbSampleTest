import pandas as pd 

data = {
    'apples': [3, 2, 0, 1],
    'orange': [0,3, 7, 2]
}

df = pd.read_csv('purchases.csv', index_col=0)

print(df) 

#purchases = pd.DataFrame(data, index=['June', 'Robert', 'Lily', 'David'])