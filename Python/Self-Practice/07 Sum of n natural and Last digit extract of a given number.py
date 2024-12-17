# sum of first n natural numbers

def sum_numbers(n):
    print("The sum of first natural numbers till", n , "is:",(n*(n+1))/2)
    
def last_digit(m):
    print("The last digit of the given number is", m%10)
    

n= int(input("Enter the number till which you need to find sum\n"))
sum_numbers(n)

m= int(input("Enter the number to extract last digit\n"))
last_digit(m)
