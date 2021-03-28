import pandas as pd 
from openpyxl.workbook import Workbook

df = pd.read_csv("Names.csv", header=None)
df.columns = ['First', 'Last', 'Address', 'City', 'State', 'Area Code', "Ext"]

df.to_excel("modv2.xlsx", index=None)

# To view multiple columns you need to add extra buckets. 
print(df[['State', 'Area Code']])
print()

print(df['First'][0:3])
print()

# Use the ilocation function
print(df.iloc[1])
print()

wanted_values = df[['First', 'Last', 'State']]
stored = wanted_values.to_excel('State_Location.xlsx', index=None)