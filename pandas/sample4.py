import pandas as pd 

single_list = ["Natsu", "Dragneel", "Fire"]

myvar = pd.Series(single_list, index = ["FirstName", "LastName", "Elemment"])

print(myvar)
