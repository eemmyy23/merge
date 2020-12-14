import sys

clean_input = "".join(sys.argv[1:]).replace(" ", "")
input_list = list(map(eval, clean_input.replace("]", "]*")[:-1].split("*")))
sorted = sorted(input_list, key=lambda tup: tup[0])

def max(a,b):
	return a if a>=b else b

def merge(a,b):
	if b[0] <= a[1]: # should merge
		return [a[0], max(a[1],b[1])]
	return a, b

output = merge(sorted[0], sorted[1])

print(str(output).replace(" ",""), end="")
