# Lecture 06

# 1 Program to print all the elements of the 2-D List  
# 2 Program to return a list of sum of all 1-D list inside them
# 3 Find the sum of diagonal elements in a square matrix/list 
# 4 Find the sum of second diagonal elements in a square matrix/list
# Dictionary Data Structure
# 5 Program to find Numeric values from the String

lst =[[2,3,4],
      [2,3,5],
      [1,1,9]]

# Program 1 : To print all the elements of the 2-D list
print("The Elements of the list are")
for i in range(len(lst)):
    for j in range(len(lst[i])):
        print(lst[i][j])

# print(sum(lst)) does not work as the sum function works only for int datatype

# Program 2: Return a list of sum of 1-D List inside 2-D List
new_list=[]
for i in range(len(lst)):
    nw=lst[i] # not necessarily required, you can provide len(lst[i]) in the range of second loop
    sum=0
    for j in range(len(nw)):
        sum += nw[j]
    new_list.append(sum)
print("List with sum of all 1-D list are:",new_list)


# Program 3: Find the sum of diagonal elements
diagonal_sum =0
for i in range(len(lst)):
    for j in range(len(lst[i])):
        if i==j:
            diagonal_sum += lst[i][j]
        else:
            continue
print("The Digaonal Sum is", diagonal_sum)

# Program 4: Sum of Reverse Digaonal
# Logic: In reverse diagonal, the i & j index have sum 1 less than the length of 1-D list 
reverse_diagonal_sum =0
for i in range(len(lst)):
    for j in range(len(lst[i])):
        if i+j == len(lst[i])-1:
            reverse_diagonal_sum += lst[i][j]
        else:
            continue
print("The Reverse Digaonal Sum is", reverse_diagonal_sum)

# NOTE: 
# Approach is to first write the index of the elements for which you want to perform operation.
# Then build a formula using the logic 


#Dictionary
dct = {1: 'abhay', 2:'aditya', 3:'dubey'}
print(dct)

dctp= {1:'abhay', 1:'aditya'}
print(dctp)

print(dct.keys())
print(dct.values())
print(dct[1]) #Search for the key in the dictionary name dct


dctw={ 1: {'name': 'abhayq',
           'roll': 101},
       2: {'name': 'aditya',
           'roll': 102},
       3: {'name': 'dubey',
           'roll': 103}
    }

print(dctw[1]['name']) # Retreiving the value from key 1 and and then Retreiving value from name key

# NOTE: Keys in dictionary can be String, Boolean, Int or Float
# Deleting a key from dictionary

del dctw[1]
print(dctw)


# print all the name and roll number from dctw 
for i in dctw.keys():
    print(dctw[i]['name'],dctw[i]['roll'])
    
    
# String Iteration
for h in 'abhay':
    print(h)
    
# 5 Program to find numeric values from the String
given_string = "AbhayAditya231Dubey09"
for cx in given_string:
    if cx in '0123456789':
        print(cx, end="") # or declare an empty strig and concat the value cx whenever it is a number 
# Another approach to this would be to run a for loop on the given strig and compare with function isalpha and isdigit
