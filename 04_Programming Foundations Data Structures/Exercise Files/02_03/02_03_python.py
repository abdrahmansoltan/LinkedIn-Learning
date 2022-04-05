# Multidimensional arrays

#Define variables
dinnerChoices = [["Salad", "Soup", "Cheese Plate"], ["Chicken", "Salmon", "Lasagna"]]
appIndex = 0
mainDishIndex = 1

#Find values
firstApp = dinnerChoices[appIndex][0]
secondApp = dinnerChoices[appIndex][1]
thirdMainDish = dinnerChoices[mainDishIndex][2]
#Print outputs
print(firstApp + ", " + secondApp + ", " + thirdMainDish)

#Change 2d array value
dinnerChoices[1][0] = "Steak"
#Print output
print(dinnerChoices)
print(dinnerChoices[1][0])