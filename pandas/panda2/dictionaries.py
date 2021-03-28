thisdict = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964
}

# Print out entire dictionary
print(thisdict)

print()
# Print out value of brand
print(thisdict["brand"])
lenOfdict = len(thisdict)

print("\nNumber of items in \"thisdict\" is ", lenOfdict)

#########################################
# Creating personal set.
desktop_computer = {
    "name": "DESKTOP-XXXXXX",
    "vendor": "Microsoft",
    "model": "OptiPlex 7090",
    "year": 2010
}

v = desktop_computer.get("vendor")
print(v)
print()
print(desktop_computer.keys())
print()
print(desktop_computer.values())


desktop_computer["color"] = "black"

#Prints the dictionarys
print(desktop_computer)
print()
# print the items 
print(desktop_computer.items())

#print(desktop_computer.values())

