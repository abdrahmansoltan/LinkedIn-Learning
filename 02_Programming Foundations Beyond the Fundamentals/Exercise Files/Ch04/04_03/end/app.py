# importing Regular Expressions
import re

five_digit_zip = '98101'
nine_digit_zip = '98101-0003'
phone_number = '234-567-8901'

# start with the letter R. This indicates that the string that follows may include back slashes that the compiler should ignore. 
# include my expression in quotes and I want to look for five digits in a row
five_digit_expression = r'\d{5}'

#takes 2 arguments: RE and the string it compares against
print(re.search(five_digit_expression, five_digit_zip))
print(re.search(five_digit_expression, nine_digit_zip))
print(re.search(five_digit_expression, phone_number))
