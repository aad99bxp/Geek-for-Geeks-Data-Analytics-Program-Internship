# Taking input for integer
integer_input = int(input("Enter an integer: "))
print("Integer input:", integer_input)

# Taking input for float
float_input = float(input("Enter a float: "))
print("Float input:", float_input)

# Taking input for string
string_input = input("Enter a string: ")
print("String input:", string_input)

# Taking input for boolean (True or False)
boolean_input = input("Enter a boolean (True/False): ")
boolean_input = boolean_input.lower() == "true"
print("Boolean input:", boolean_input)

# Taking input for complex number
complex_input = complex(input("Enter a complex number (e.g., 3+4j): "))
print("Complex input:", complex_input)

# Taking input for list (comma-separated values)
list_input = input("Enter a list of numbers (comma-separated): ")
list_input = list(map(int, list_input.split(",")))
print("List input:", list_input)

# Taking input for tuple (comma-separated values)
tuple_input = input("Enter a tuple of numbers (comma-separated): ")
tuple_input = tuple(map(int, tuple_input.split(",")))
print("Tuple input:", tuple_input)

# Taking input for set (comma-separated values)
set_input = input("Enter a set of numbers (comma-separated): ")
set_input = set(map(int, set_input.split(",")))
print("Set input:", set_input)

# Taking input for dictionary (key-value pairs separated by commas)
dict_input = input("Enter a dictionary (key:value pairs separated by commas): ")
dict_input = dict(item.split(":") for item in dict_input.split(","))
print("Dictionary input:", dict_input)
