n = int(input())
k = int(input())

cnt = 0
for i in range(1, n + 1):
    if k % i > 0:
        cnt += 1
print(cnt)
