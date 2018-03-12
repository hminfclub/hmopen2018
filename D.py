n, s = map(int, input().split())
a = list(map(int, input().split()))

left = 0
ans = 0
sum = 0

for i in range(n):
    sum += a[i]
    while sum > s:
        sum -= a[left]
        left += 1
    if sum == s:
        ans += 1
print(ans)
