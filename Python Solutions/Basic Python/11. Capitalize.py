# Problem: https://www.hackerrank.com/challenges/capitalize/problem


def solve(s):
    words = s.title()
    return words
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = solve(s)

    fptr.write(result + '\n')

    fptr.close()
