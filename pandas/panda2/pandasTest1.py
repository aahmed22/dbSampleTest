import pandas as pd 

data = {
    'apples': [3, 2, 0, 1],
    'orange': [0,3, 7, 2]
}

#purchases = pd.DataFrame(data)
# If you want to add an index create the following:
purchases = pd.DataFrame(data, index=['June', 'Robert', 'Lily', 'David'])

print(purchases)

# Targeting specific set 
print("\nSpecific point from set")
print()
#purchases.loc['June']
print(purchases.loc['June'])

print("--------------------------------")
print("\n\nAn additonal set added:\n\n")

# Below is a testing set
my_set = {
    "characters": ["Natsu", "Grey", "Laxus"],
    "Element": ["Fire", "Ice", "Lightning"],
    "Rank": ["A", "A", "S"]
}

panda_set = pd.DataFrame(my_set, index=['First', 'Second', "Third"])
print(panda_set)

print("****************************\n")

print(panda_set.loc["Third"])
print()
