N = int(input())
for i in range(N):
    password = len(str(input()))
    if 6 <= password <= 9:
        print("yes")
    else:
        print("no")
