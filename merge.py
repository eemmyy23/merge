import sys
import re

clean_input = "".join(sys.argv[1:]).replace(" ", "")
if not bool(re.match(r"^(\[[-\d,\.]+\]){2,}$", clean_input)):
	print("Invalid format. See feature description for exaples", end="")
	exit(0)

input_list = list(map(eval, clean_input.replace("]", "]*")[:-1].split("*")))
for interval in input_list:
	interval.sort()

# sort intervals by start
sorted_list = sorted(input_list, key=lambda interval: interval[0])

def max(a,b):
	return a if a>=b else b

def merge(a,b):
	if b[0] <= a[1]: # should merge
		return [[a[0], max(a[1],b[1])]]
	return [a, b]

output = []
output.extend(merge(sorted_list.pop(0), sorted_list.pop(0)))
while len(sorted_list):
	output.extend(merge(output.pop(), sorted_list.pop(0)))

print(" ".join(str(interval).replace(" ", "") for interval in output), end="")
