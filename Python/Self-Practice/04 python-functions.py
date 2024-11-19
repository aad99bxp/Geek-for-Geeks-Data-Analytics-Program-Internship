# what are functions
#The idea is to put some commonly or repeatedly done tasks together and make a function so that instead of writing the same code again and again for 
#different inputs, we can do the function calls to reuse code contained in it over and over again. 


#Def keyword is used to define functions
def sqr(n):
    #this function takes a number as paramter and returns the square of the number
    print('Square of number is', n*n)


def sum(a,b):
    print('Sum of given numbers is',a+b)



#Function Calling
sqr(5)
sum(4,5)
