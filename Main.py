while True:
    N = int(input())
    if N != 0:
        for i in range(N):
            star = "*"
            print(star * (i + 1))
    else:
        break
