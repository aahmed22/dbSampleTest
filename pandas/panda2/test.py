try:
    print(x)
except NameError:
    print("Variable x is not defined")
except:
    print("You did not enter a value yet for x")