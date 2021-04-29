# Problem: https://www.hackerrank.com/challenges/python-print/problem?h_r=next-challenge&h_v=zen


n = int(input())
print(*range(1, n + 1), sep='')


# OR
n = int(input())
s = "".join(map(str, range(1, n + 1)))
print(s)