# Lecture 05

# 1 Program  to find the sum of fisrt 100 numbers
# 2 Program to find the product of first 100 numbers
# 3 Program to find the sum of first 100 odd numbers
# 4 Program to find the sum of first 100 prime numbers
# 5 Program to find the sum of first 100 even numbers
# 6 Program to find the sum of square of first n natural numbers
# Data Structure - List


#Program 1
def sum_n(n):
    sum=(n*(n+1))/2
    print(sum)

sum_n(100)


#Program 2
def product_of_natural_numbers(n):
    product = 1
    for i in range(1, n + 1):
        product *= i
    print(product)

product_of_natural_numbers(100)


#Program 3
def sum_of_odd(n):
    print(n*n)
sum_of_odd(100)


#Program 4 
def sum_of_prime(n):
    #First find all the prime numbers upto n and store it in the list
    l=[]
    for num in range(1,n+1):
        if(num>1):
            for i in range(2,num):
                if (num%i)==0:
                    break
            else:
                l.append(num)
    print(l)            
    sum=0
    for items in l:
        sum += items
    print("The sum of first", n ,"prime is",sum)

sum_of_prime(10)

#Program 5 
def sum_of_even(n):
    print(n*(n+1))
sum_of_even(100)


#Program 6
def square_sum(n):
    sum=0
    for i in range(0,n+1):
        sum += i**2
    print(sum)
    
    #OR Use Formula n(n+1)(2n+1)/6
square_sum(2)



#Data Structure
# You can store many data into a single variable by the use of data structures
# List is defined by []
# You can store data either of same type or different type in the List

marks=["abhay", 1, 4.0]
print(marks)


#To find the length of a List
print(len(marks))


# To print every element i n List
for i in range(len(marks)):
    print(marks[i])
    
# Sum of numbers in a list 
num_list=[1,2,3]
sum_list=0
for i in num_list:
    sum_list += i
print(sum_list)
#or 
print("Using the built in sum fucntion",sum(num_list))
    
# To find any specific data in the list, first iterate and match with the data 
for i in range(len(marks)):
    if marks[i]== "abhay":
        print(i)

# To print lowercase of string 
print("AbhAy".lower())


