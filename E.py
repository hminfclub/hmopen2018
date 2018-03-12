# В силу того, что интерпретатор Python работает медленнее,
# чем скомпилированные программы на современных языках (C++),
# данное решение набирает 58 баллов.

t = input().strip()
s = input().strip()

n = len(s)
ans = 0
for i in range(n):
    s = s[1:] + s[0]
    ok = True
    for j in range(n):
        if t[j] != '?' and s[j] != t[j]:
            ok = False
            break
    if ok:
        ans += 1
print(ans)
