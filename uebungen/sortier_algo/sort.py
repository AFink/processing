

def sort(l):
	for i in range(0, len(l)):
		for x in range(0, len(l)-1):
			if (l[x] > l[x+1]):
				b = l[x+1]
				l[x+1] = l[x]
				l[x] = b
	return l

l = [2,46,23,72,48, 29]

print(l)
l = sort(l)
print(l)
