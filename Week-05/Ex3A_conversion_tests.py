# Description: This script tests various numeric conversion techniques
# Author: Lily Wells

a = " 101.1 "
b = '55'
c = "402 Stevens"
d = 'Number 5 '

print(a)
print(b)
print(c)
print(d)

print(float(a))
print(int(b))
print(str(c))
print(str(d))

# When adding the variable types, the output does not change from the original result. 

print(int(float(a)))

# Float conversion on variable a takes away the decimal point.

print(c[0:4])

# Splicing 0:4 provides us with just the integer instead of the full string.

a.strip()
d.strip()