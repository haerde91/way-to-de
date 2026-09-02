# 02_data_types.py

# str - text
name = "Mateusz"

# int - integer number
age = 30

print(name)
print(type(name))

print(age)
print(type(age))

#############################

#age_text = "30"
#age = 30

#print(age_text + "1")
#print(age + 1)

##########################
#transformation str to int

age_text = "30"
age = 30

age_text = int(age_text)

print(age_text + 1)
print(age + 1)

###############################
####### float #################

price = 19.99

print(price)
print(type(price))

price_with_tax = price * 1.23

print(price_with_tax)
print(type(price_with_tax))

###############################
####### bool ##################

age = 30

print(age > 18)
print(age < 18)



age = 15

result = age > 18

print(result)
print(type(result))


###################################
####### none ######################

result = None

print(result)
print(type(result))

#
email = None

print(email)
print(type(email))

###

email = None
empty_email = "" #= przypisz

print(email == empty_email) #== sprawdz, czy rowne

