# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

print("강한친구 대한육군")
print("강한친구 대한육군")

print("\    /\\")
print(" )  ( ')")
print("(  /  )")
print(" \(__)|")

print("|\_/|")
print("|q p|   /}")
print('( 0 )"""\\')
print('|"^"`    |')
print("||_/=\\\__|")

print(4)
print("astride1717")

A = int(input("숫자를 입력하세요:"))
B = int(input("숫자를 입력하세요:"))
print(A+B)

A, B = int(input("숫자를 입력하세요:")), int(input("숫자를 입력하세요:"))
print(A+B)

C = input().split()
A = int(C[0])
B = int(C[1])
print(A+B)

C = input().split()
A = int(C[0])
B = int(C[1])
print(A-B)

C = input().split()
A = int(C[0])
B = int(C[1])
print(A*B)

C = input().split()
A = int(C[0])
B = int(C[1])
print(A/B)

C = input().split()
A = int(C[0])
B = int(C[1])
print(A+B)
print(A-B)
print(A*B)
print(int(A/B))
print(int(A%B))

D = input().split()
A = int(D[0])
B = int(D[1])
C = int(D[2])
print((A+B)%C) 
print((A%C + B%C)%C)
print((A*B)%C)
print((A%C * B%C)%C) 

A = input()
B = input()
print(int(A)*int(B[2]))
print(int(A)*int(B[1]))
print(int(A)*int(B[0]))
print(int(A)*int(B))

def two_times(numberList):
    result = [ ]
    for number in numberList:
        result.append(number*2)
    return result

result = two_times([1, 2, 3, 4])
print(result)

def two_times(x): 
    return x*2

list(map(two_times, [1, 2, 3, 4]))

list(map(lambda a: a*2, [1, 2, 3, 4]))

C = input().split()
A = int(C[0])
B = int(C[1])

if A > B :
    print(">")
elif A < B : 
    print("<")
else : 
    print("==")
    
A = int(input("시험점수를 입력하세요:"))
if A >= 90 and A <= 100:
    print('A')
elif A >= 80 and A <= 89:
    print('B')
elif A >= 70 and A <= 79:
    print('C')
elif A >= 60 and A <= 69:
    print('D')
else : 
    print('F')

A = int(input())
if A in range(90, 101):
    print('A')
elif A in range(80, 90):
    print('B')
elif A in range(70, 80):
    print('C')
elif A in range(60, 70):
    print('D')
elif A in range(0, 60) : 
    print('F')
else : 
    pass
    
X = int(input())
if X%4 == 0 and X%100 != 0 or X%400 == 0:
    print(1)
else : 
    print(0)

C = input().split()
H = int(C[0])
M = int(C[1])
if M in range(45, 60):
    M1 = M - 45
    if M1 in range(0, 60):
        print(H, M-45)
elif M in range(0, 45):
    H1 = H-1
    M1 = M+15
    if H1 in range(1, 23) and M1 in range(0, 60):
        print(H1, M1)
    elif H == 0 :
        print(23, M1)
else:
    pass  


D = input().split()
A = int(D[0])
B = int(D[1])
C = int(D[2])

if A > B and A > C and A in range(1, 101): #A가 최대일때
    if B >= C: 
        print(B)
    else : 
        print(C)
elif B > C and B > A and B in range(1, 101) : #B가 최대일때
     if C >= A:
         print(C)
     else :
         print(A)
elif C > A and C > B and C in range(1, 101): #C가 최대일때
    if A >= B:
        print(A)
    else :
        print(B)
elif A == B or B == C or A == C :
    print(B)
    

D = input().split()
A = int(D[0])
B = int(D[1])
C = int(D[2])
E = [A, B, C]
F = sorted(E)
print(F[1])

#2739
N = int(input())
for i in range(1, 10):
    print(N, "*", i, '=', N*i )

#10950
T = int(input())
for i in range(T):
    i = input().split()
    A, B  = int(i[0]), int(i[1])
    print(A+B)

#8393
sum = 0
N = int(input())
for i in range(1, N+1):
    sum = sum + i
print(sum)

#15552
import sys
n = int(input())
for i in range(n):
    A, B = map(int, sys.stdin.readline().split())
    print(A+B)

#2741
T = int(input())
for i in range(1, T+1):
    print(i)
    
#2742
N = int(input())
for i in range(N, 0 , -1):
    print(i)

#11021
N = int(input())
for i in range(1, N+1):
    k = input().split()
    A, B  = int(k[0]), int(k[1])
    C = A+B
    print("Case #"+ str(i)+':', C )

#11022
N = int(input())
for i in range(1, N+1):
    k = input().split()
    A, B  = int(k[0]), int(k[1])
    C = A+B
    print("Case #"+ str(i)+':', A, '+', B, '=', C )

#2438
N = int(input())   
for i in range(1, N+1):
    print('*'*i)

#2439
N = int(input())   
for i in zip(range(1, N+1), range(N-1, -1, -1) ):
    j, k = i
    print(' '*k + '*'* j)

#10871
N, X = map(int, input().split())
A = input().split()
A1 = []
for i in A:
    ii = int(i)
    A1.append(ii)

for i in A1:
    if X > i:
        print(i, end = " ")


#10952
        





#10951
while True:
    try : 
        C = map(int, input().split())
        print(sum(C))
    except EOFError:
        break

#1110
N =input()
if(int(N) < 10):
    N = '0' + N

cycle = 0
check_value = int(N)
while True :
    a, b = int(N[0]), int(N[1])
    B = a + b
    cycle += 1
    N = str(N)
    B = str(B)
    N = N[-1] + B[-1] 
    
    if check_value == int(N) : 
        break
print(cycle)

#10818
N = int(input())
X = list(map(int, input().split()))
a = min(X)
b = max(X)
print(a, b)

#2562
list = []
for i in range(9):
    A = int(input())
    list.append(A)
M = max(list)
print(M)
print(list.index(M)+1)

#2920
N = map(int, input().split())
N = list(N)
if len(N) == 8:
    A = sorted(N)
    B = sorted(N,reverse=True)
    
    if N == A:
        print("ascending")
    elif N == B:
        print("descending")
    else : 
        print("mixed")
else : 
    quit
    
#2577
A = int(input())
B = int(input())
C = int(input())
keys = [str(i) for i in range(10)]
values = []
N = []
if A and B and C >= 100:
    X = A*B*C
    X = str(X)
    for i in range(len(X)):
        N.append(X[i])
    for i in keys:
        if N.count(i) == 0: 
            values.append(0)
        else :
            values.append(X.count(i))
else : 
    quit

for i in values:
    print(i)

#3052
N = []   
for i in range(10):
    if i < 1000 and i > 0: 
        i = int(input())
        b = i%42
        N.append(b)
    else :
        break
        
import numpy as np
print(len(np.unique(N)))
#-------------------------------------
N = []   
for i in range(10):
    i = int(input())
    if i < 1000 and i > 0: 
        b = i%42
        N.append(b)
    else :
        break
    
print(len(set(N)))


#1546
N = int(input())
G = map(int, input().split())
G = list(G)
Y = []
for i in range(N):
    if G[i] <=100 and G[i]>= 0:
        X = (G[i]/max(G))*100
        Y.append(X)
        Z = sum(Y)/N
    else : 
        pass

print('%0.2f' % float(Z))

#8958
N = int(input())
for i in range(N):
    A = []
    note = input()
    note1 = note.split('X')
    for i in note1:
        if i == '':
            A.append(0)
        else : 
            A.append(len(i))
    #print(A)
    Y = []
    for i in A:
        if i > 0:
            sum = 0
            for k in range(i+1):
                sum += k
            Y.append(sum)
        elif i == 0 :
            Y.append(0)
    #print(Y)
    fin = 0
    for i in Y : 
        fin += i
    print(fin)
        










