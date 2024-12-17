# Arithmetic Progression of nth Term
# A person gets 5000 salary on 1st August 2020.The salary increases by 2000 every month
# Find the salary that the person is going to get on 1st August 2025 

# Nth term = a + (n-1)*d 
# Here, a= first term, n= number of terms, d= common difference


# here between any two months the commom difference is 2000, the first term or first salary is 5000
# Also the number of terms or months between the two speified dates are 61


# Geometric Progression of nth term
# A person gets 5000 salary and the salary doubles every year 
# What will be the salary that the person will get on 1st Jan 2030

# Nth Term in GP = a*r^n-1
# a = first term, r= common ration, n = number of terms

#Below is the python program for the same

def arithmetic_progression(a,n,d):
    print(a+(n-1)*d)

def geometric_progression(a,n,d):
    print(a*r**(n-1))

print("What do you want to find")
x= int(input("Choose 1 for AP and 2 for GP\n"))


a = int(input("Enter the First Salary\n"))
n = int(input("Enter the number of terms\n"))

if (x==1):
    d = int(input("Enter the Increase in salary every month\n"))
    arithmetic_progression(a,n,d)
elif (x==2):
    r=int(input("Enter the Increase in salary every year, common ratio\n"))
    geometric_progression(a,n,r)














