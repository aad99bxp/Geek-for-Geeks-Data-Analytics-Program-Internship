# Initialize variables
count = 0
number = 2

# Use a while loop to print the first 100 even numbers
while count < 100:
    print(number)
    number += 2
    count += 1


# Using For Loop and without Counter
for i in range(1,201):
    if (i%2 ==0):
        print(i)
        
# Similar way you can print Odd Numbers or any other numbers

# Fucntion to print Ptime Number in a xrange
def prime(lower, upper):
    print("Prime numebrs between", lower, "and", upper, "are:")
    
    for num in range(lower, upper+1):
        if(num>1):
            for i in range(2, num):
                if(num%i)==0:
                    break
            else:
                print(num)
prime(1,10)



# Write the code to print the sample space when all the dices are rolled together
for i in range(1,7):
    for j in range(1,7):
        print (i,j)

# Write code to print the outcomes when the sum of number on both the dices is equal to 8 
for i in range(1,7):
    for j in range(1,7):
        if (i+j)==8:
            print(i,j)
            
            
#probability of sum=8 of numbers on both dices
counterz =0
for i in range(1,7):
    for i in range(1,7):
        if (i+j)==8:
            counterz +=1
print(counterz/36)
