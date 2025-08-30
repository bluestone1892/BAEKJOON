from datetime import datetime

now = datetime.now()
Y = now.year
M = format(now.month, '02')
D = now.day
H = now.hour
if H-9 < 0:
    D = format(now.day-1, '02')
print(Y)
print(M)
print(D)
