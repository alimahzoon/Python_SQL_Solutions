# Problem: https://www.hackerrank.com/challenges/text-wrap/problem


# By using textwrap
import textwrap
def wrap(string, max_width):
   
    return textwrap.fill(string, max_width)

string, max_width = input(), int(input())
result = wrap(string, max_width)
print(result)


# Without using textwrap
def wrap(string, max_width):
    return "\n".join([string[i:i+max_width] for i in range(0, len(string), max_width)])

string, max_width = input(), int(input())
result = wrap(string, max_width)
print(result)