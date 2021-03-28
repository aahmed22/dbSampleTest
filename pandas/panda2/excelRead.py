import pandas as pd  

data = pd.read_excel(r'C:\Users\Gold\Documents\STAGING\Area5\PG\account.xlsx')

df = pd.DataFrame(data, columns = ['Machine Name'])

print(df)