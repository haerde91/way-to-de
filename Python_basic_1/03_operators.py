# Arithmetic operators
# +   addition       - dodawanie
# -   subtraction    - odejmowanie
# *   multiplication - mnożenie
# /   division       - dzielenie
# //  floor division - dzielenie całkowite
# %   modulo         - reszta z dzielenia
# **  exponentiation - potęgowanie

# Comparison operators
# ==  equal          - równe
# !=  not equal      - różne
# >   greater than   - większe
# <   less than      - mniejsze
# >=  greater/equal  - większe/równe
# <=  less/equal     - mniejsze/równe

# Assignment operators
# =   assignment     - przypisanie
# +=  add/assign     - dodaj/przypisz
# -=  subtract/assign - odejmij/przypisz
# *=  multiply/assign - pomnóż/przypisz
# /=  divide/assign  - podziel/przypisz

# Logical operators
# and logical AND    - logiczne AND
# or  logical OR     - logiczne OR
# not logical NOT    - logiczne NOT



# Arithmetic operators
##################
result = 10/3

print(result)
print(type(result))
##################

result = 10 // 3

print(result)
print(type(result))        ###operator floor "//""
                            ###zaokragla w dol osi liczbowej
###################

result = -10 // 3

print(result)
print(type(result))


###################
result = 10 % 3

print(result)
print(type(result))
####################

result = 2 ** 3

print(result)

####################

# Comparison operators

age = 30

print(age > 18)
print(age < 18)
print(age >= 30)
print(age <= 29)
print(age == 30)
print(age != 30)

##############################

# Logical operators

age = 30
city = "Warsaw"

print(age >= 18 and city == "Warsaw")

##

age = 30
city = "Krakow"

print(age >= 18 or city == "Warsaw")

###

age = 30

print(not age < 18)

###test###

age =30
city = "Warsaw"

print(age >= 18 and city == "Warsaw")
print(age < 18 or city == "Warsaw")
print(not age < 18)

##########################################
#   Assignement operators
##########################################

age = 30

age += 5 # age = age + 5

print(age)

##

age = 30

age -= 5 # age = age - 5

print(age)

#####   importatant ######

age = 30
age /= 2

print(age)
print(type(age))

##### / always return float data type !#####
