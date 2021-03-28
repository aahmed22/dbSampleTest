import pandas as pd 
from openpyxl.workbook import Workbook

df_excel = pd.read_excel('regions.xlsx')

# This will print the csv file. However the the first row will appear as the header. 
df_csv = pd.read_csv('Names.csv')

# To avoid this use the following parameter "header = None"
# The columns will be set as integers
df_csv2 = pd.read_csv('Names.csv', header=None)

# To change the header from integers to specific names use the columns property. 
df_csv2.columns = ['First', 'Last', 'Address', 'City', 'State', 'Area Code', "Ext"]
df_csv2.to_excel('modified.xlsx')
print(df_csv2)

# Adding the delimiter flag and specifiy the parameter formats the output. 
df_txt = pd.read_csv('data.txt', delimiter='\t')



#print(df_excel)
#print(df_txt)
#print(df_csv)

#print(df_csv2)