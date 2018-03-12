n, m = map(int, input().split())
a = list(map(int, input().split()))

for i in range(m):
    c, k = map(int, input().split())
    a[c - 1] += k

max1 = 0
max2 = 1
max3 = 2

if a[max1] < a[max2]:
    max1, max2 = max2, max1
if a[max2] < a[max3]:
    max2, max3 = max3, max2
if a[max1] < a[max2]:
    max1, max2 = max2, max1

for i in range(3, n):
    if a[i] > a[max1]:
        max3 = max2
        max2 = max1
        max1 = i
    elif a[i] > a[max2]:
        max3 = max2
        max2 = i
    elif a[i] > a[max3]:
        max3 = i

print(max1 + 1, max2 + 1, max3 + 1)
