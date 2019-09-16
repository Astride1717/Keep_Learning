#%%2019.07.17 -*- coding: utf-8 -*-
1+1
22*33
a = 1
b = 33
a + b

3/2.4

a = "Python"
print(a)

a = 3
if a > 1:    
    print("a is greater than 1")
    
if 4 in [1,2,3,4]:print ("4가 있습니다")

for a in [1,2,3]:
    print(a)
    
i = 0
while i < 3:
    i = i+1
    print(i)

###2장 파이썬 자료형
    #2-1 숫자형
3**4  #3의 4승
7 % 3   #7나누기 3의 나머지
7 / 4  #소수점까지 계산
7 // 4  #정수까지만 계산

#Q1 홍길동 씨의 과목별 점수는 다음과 같다. 홍길동 씨의 평균 점수를 구해 보자.
(80+75+55)/3

    ##2-2 문자형
    #문자형을 만드는 4가지 방법
"Hello World"
'Python is fun'
"""Life if too short, You need Python"""
'''Life if too short, You need Python'''
food = "Python's favorite food is perl"
say = '"Python is very easy." he says.'
food = 'Python\'s favorite food is perl'  #문자열에 따옴표를 포함시킬때 백슬래시를 사용
say = "\"Python is very easy.\" he says."

multiline = "life if too short\nYou need Python"
multiline1 = '''life if too short\nYou need Python'''
print(multiline1)
print(multiline)
print("\n줄 바꿈\n연습")
print("\t탭 키\t연습")

    #문자열 연산하기
head = "Python"
tail = " is fun!"
head + tail

a = "python"
a * 2 

print("=" * 50)
print("Python Program")
print("=" * 50)

print("    *")
print("   ***")
print("  *****")
print(" *******")
print("*" *9)
print(" *******")
print("  *****")
print("   ***")
print("    *")

    #인덱싱 : 각 문자열의 위치값(0부터 시작한다.)
a = "Life is too short, You need Python"
a[0]
a[12]
a[-1] #음수면 뒤에서부터 센 위치값
a[5]

    #슬라이싱 : 문자열을 자른다
a = "Life is too short, You need Python"
a[0:4] # [0:n-1]까지의 문자가 출력된다

a = "20010331Rainy"
date = a[:8]  #0부 7번째 문자까지 출력
weather = a[8:] #8번째부터 끝까지 출력

    #Q3 홍길동 씨의 주민등록번호는 881120-1068234이다. 
    #홍길동 씨의 주민등록번호를 연월일(YYYYMMDD) 부분과 그 뒤의 숫자 부분으로 나누어 출력해 보자.
pin = "881120-1068234"
yyyymmdd = pin[:6]
num = pin[7:]
print(yyyymmdd)
print(num)

    #Q4주민등록번호 뒷자리의 맨 첫 번째 숫자는 성별을 나타낸다. 
    #주민등록번호에서 성별을 나타내는 숫자를 출력해 보자.
sex = pin[7]
print(sex)

    #1
print("아...파이썬 너무 재미있어요^^")
    #2
print("11+22-33")  #11+22-33 그대로 출력된다
print(안녕? 파이썬) #오류(따옴표가 없음)
    #3
print("하하하") #하하하
print(200+100) #300
print("200+10") #200+10
print(int("200")+100) #300
    #4
head = "Python은"
tail = "아주 훌륭한 프로그래밍 언어이다."
print("=" * 50)
print(head+tail)
print("=" * 50)
    #5
str = "itrun!!"
print(str[:])
print(str[:2])
print(str[:3])
print(str[:4])
print(str[:])

#%%2019.07.18
#a = 100
#b = 50

a = int(input("첫번째 숫자를 입력해 주세요: "))
b = int(input("두번째 숫자를 입력해 주세요: "))

result = a + b
print(a, "+", b, "=", result)

result = a - b
print(a, "-", b, "=", result)

result = a * b
print(a, "*", b, "=", result)

result = a / b
print(a, "/", b, "=", result)


    #문자열 포매팅

print("100")     #문자열
print("%d" %100) #정수 100
print("%d" %(100+100)) #정수 200 출력
print("%d" % (100,200)) #에러 : 값은 두갠데 포맷은 하나
print("%d %d" %(100))  #에러 : 포맷이 두갠데 값은 하나
print("%d %d" % (100,200)) #정상작동
print("%d / %d = %d" %(100,200,0.5)) #0.5가 정수 0으로 표시되어 계산되지 않는다.

print("%d" % 123)   #숫자의 자릿수만큼 정렬
print("%5d" % 123)  #전체를 다섯자리로 설정(오른쪽 정렬)
print("%05d" % 123) #전체를 다섯자리로 설정, 빈칸은 0으로 채우기

print("%f" % 123.45)     # 소수점 아래 여섯 자리까지 디폴트로 출력
print("%7.1f" % 123.45)  # 전체 일곱자리 (소수점 아래 첫째 자리까지만 출력)
print("%7.3f" % 123.45)  # 전체 일곱자리 (소수점 아래 셋째 자리까지만 출력, 빈칸시 0 추가해서 출력)

print("%s" % "Python")   #자릿수만큼 출력
print("%10s" % "Python") #10자리로 출력후 오른쪽 정렬


"I eat %d apples" %3        #정수 3
"I eat %s apples." % "five" #문자열

number = 3
"I eat %d apples." % number

number = 10
day = "three"
"I eat %d apples. so I was sick for %s days." %(number, day)

"%10s" % "hi" #열자리 문자열 공간에서 hi를 오른쪽으로 정렬
"%-10sjane." %"hi"  #열자리 왼쪽 정렬

"%0.4f" % 3.42137234 #소수점 이하 네자리로 표현
"%10.4f" % 3.42137234 #전체 열자리 그 중 소수점 네자리

 a =int(input("당신의 나이는 "))
print("제 나이는 %d 입니다." %a)

name = input("당신의 이름은?")
print("제 이름은 %s입니다." %name)

print("제 나이는 %d이고, 이름은 %s입니다." %(a, name))

    #문자열 개수 세기
a = "hobby"
a.count("b") #b의 갯수 = 2

    #위치 알려주기
a = "Python is best choice"
a.find("b")
a.find("k")  #찾는 문자가 없으면 -1 반환

    #인덱스로 위치 찾기
a = "Life is too short"
a.index("t")
a.index("k") #Traceback에러

    #문자열 삽입
a = ","
a.join("abcd")

    #대문자로 바꾸기
a = "hi"
a.upper()

    #소문자로 바꾸기
a = "HI"
a.lower()

    #양쪽 공백 지우기
a = " hi "
a.strip()

    #문자열 바꾸기
a = "Life is too short"
a.replace("Life", "Your leg")

    #문자열 나누기
a = "Life is too short"
a.split()  #공백을 기준으로 문자열 나눔

a = "a:b:c:d"
a.split(":") #: 기준으로 나누기
    
    ##2-3 리스트 자료형
add = [1,3,5,7,9]  #리스트명 = [요소1, 요소2....]
a = []  #빈 리스트
d = [1,2, "Life", "is"]  #데이터 타입을 섞어서 리스트를 만들 수 있다
e = [1,2,["Life", "is"] ] #리스트 안에 또 다른 리스트를 넣을 수 있다.
    
    #리스트의 인덱싱
a = [1,2,3]
a[0]
a[0] + a[2]

    #리스트의 슬라이싱
a = [1,2,3,4,5]
a[0:2]
b = a[:2]
c = a[2:]

    #리스트 더하기
a = [1,2,3]
b = [4,5,6]
a + b

    #리스트 반복하기
a = [1,2,3]
a * 3

colors = ["red", "blue", "green"]
print(colors[0])
print(colors[2])

color1 = ["red", "blue", "green"]
color2 = ["orange", "black", "white"]
color1 + color2
color1 *2

    #리스트 수정하기
a = [1,2,3]
a[2] = 4
a

    #리스트에서 연속된 범위의 값 수정하기
a[1:2]  #2
a[1:2] = ['a', 'b', 'c']
a      #[1, 'a', 'b', 'c', 4] #2를 a,b,c로 대체

    #리스트 요소 삭제
a = [1, 'a', 'b', 'c', 4]
a[1:3] = [] #a,b를 빈 값으로 대체
a           #결과값 [1, 'c', 4]
del a[0] #del 함수로 요소 삭제
a

    #리스트 관련 함수
a.append() #요소 추가(리스트 맨 뒤에 배정됨)
a.sort()   #정렬
a.reverse() #순서 뒤집기
a.index()   #위치값 찾기
a.insert(0, 4) #요소 사이에 삽입
a.remove(x)  #리스트에서 첫번째로 나오는 x를 삭제
a.pop()  #리스트의 맨 마지막 요소를 돌려주고 삭제
a.count(x) #리스트 내에 x가 몇개 있는지 알려줌
a.extend([4,5]) #리스트 안에 리스트 추가하기

a,b,c,d = 0,0,0,0
hap = 0
a = int(input("1번째 숫자:"))
b = int(input("2번째 숫자:"))
c = int(input("3번째 숫자:"))
d = int(input("4번째 숫자:"))

hap = a+b+c+d
print("합계 ==> %d" %hap)

///리스트(List)
aa = [0,0,0,0]
hap = 0
aa[0] = int(input("1번째 숫자:"))
aa[1] = int(input("2번째 숫자:"))
aa[2] = int(input("3번째 숫자:"))
aa[3] = int(input("4번째 숫자:"))

hap = aa[0]+aa[1]+aa[2]+aa[3]
print("합계==> %d" %hap)


    ##2-4 튜플 자료형
t1 = (1,2,'a','b')
t2 = (1,) #요소가 하나라도 꼭 콤마를 붙일 것
del t1[0]
#리스트와 달리 튜플은 요소 생성/삭제/수정이 불가능하다.
t1[0] = 'c'

    #인덱싱
t1 = (1,2,'a','b')
t1[0]

    #슬라이싱
t1[1:]

    #더하기
t2 = (3,4)
t1 + t2

    #곱하기
t2 * 3
    

    ##2-5 딕셔너리 자료형(associative array)
    #key를 통해 value를 얻는다
dic = {'name' : 'pey', 'phone' : '0119993323', 'birth': '1118'}

    #딕셔너리에 쌍 추가하기
a = {1: 'a'}
a[2] = 'b'  #쌍 추가
a['name'] = 'pey'
a[3] = [1,2,3]
a

    #딕셔너리 요소 삭제하기
del a[1]
a   #{2: 'b', 'name': 'pey', 3: [1, 2, 3]}

#리스트나 튜플, 문자열은 인덱싱이나 슬라이싱으로 원하는 값을 찾지만
#딕셔너리는 key를 사용하는 방법이 유일하다.
grade = {'pey':10, 'juillet':99}
grade['pey']
grade['juillet']

a.keys() #key값 리스트 가져오기
a.values() #value 값 리스트 가져오기
a.items() #key-value쌍 얻기
a.clear() #key-value쌍 모두 지우기

dic = {'name' : 'pey', 'phone' : '0119993323', 'birth': '1118'}
dic.get('name') #key로 value 얻기
dic.get('phone')

#해당 key가 딕셔너리 안에 있는지 조사하기(in)
'name' in a  #True
'email' in a  #False

    ##2-6 집합 자료형
    ##집합연산을 위한 자료형
    
s1 = set([1,2,3])
s1
# 중복을 허용하지 않고 순서가 없다.
s2 = set("Hello")
s2  #l은 한번만 나온다.

    #합집합(연산기호 |)
s1 = set([1,2,3,4,5,6])
s2 = set([4,5,6,7,8,9])
s1|s2        #방법1
s1.union(s2) #빙밥2

    #차집합(연산기호 -)
s1 - s2
s2 - s1
    #차집합2
s1.difference(s2)
s2.difference(s1)

    #교집합(연산기호 &)
s1 & s2
s1.intersection(s2)

    #값 추가하기
s1 = set([1,2,3])
s1.add(4)
s1

    #값 여러개 추가하기
s1 = set([1,2,3])
s1.update([4,5,6])

    #값 제거하기
s1.remove(2)
s1

###세트는 키만 모아 놓은 딕셔너리의 특수한 형태
#딕셔너리의 키는 중복되면 안되므로 세트에 들어 있는 값은 항상 유일하다.
#세트를 생성하려면 딕셔너리처럼 중괄호를 사용 {}, : 없이 값을 입력
#중복된 키는 자동으로 하나만 남음
mySet1 = {1,2,3,3,3,4}
mySet1   #{1, 2, 3, 4}로 중복 없이 출력

    ##2-7 자료형의 참과 거짓
#True : 0이 아닌 숫자, "python"..
#False :빈 리스트, 튜플, 딕셔너리, 0, None..
    
#다음 리스트에서 중복 제거하기
a = [1,1,1,2,2,3,3,3,4,4,5]
aSet = set(a)
b= list(aSet)
print(b)

    ##2-8 자료형의 값을 저장하는 공간, 변수
#대소문자를 구분한다
#문자, 숫자, 언더바를 포함할 수 있다(숫자로 시작하지 않는다)
#    
a = [1,2,3]
b= a     #이런 식으로 변수 할당 하지 말것.
a[1] = 4

var1 = var2 = var3 = var4 = 100
var1 = var1 + 200

##예제
#1.
student = {'학번':1000, '이름':'김아이티', '학과': '컴퓨터학과'}

#2.
student['연락처'] = '0102226666'

#3. 
student['학과'] = '전자공학과'

#4. 
student['학과']
student.get('학과')

#5.
student.keys()

#6. 동전 교환 프로그램
교환할 돈은 얼마? 887500
50000원 17장, 10000원 3장, 5000원 1장, 1000원 2장
500원 1개, 100원 0개, 50원 0개, 10원 0개
바꾸지 못한 돈 ==> 0원

m = int(input("교환할 돈은 얼마?" ))
m1 = (m // 50000) 
m2 = (m-(50000*m1)) // 10000
m3 = ((m-((50000*m1)+(10000*m2))) //5000)
m4 = ((m-((50000*m1)+(10000*m2)+(5000*m3))) //1000)
m5 = ((m-((50000*m1)+(10000*m2)+(5000*m3)+(1000*m4))) //500)
m6 = ((m-((50000*m1)+(10000*m2)+(5000*m3)+(1000*m4)+(500*m5))) //100)
m7 = ((m-((50000*m1)+(10000*m2)+(5000*m3)+(1000*m4)+(500*m5)+(100*m6))) //50)
m8 = ((m-((50000*m1)+(10000*m2)+(5000*m3)+(1000*m4)+(500*m5)+(100*m6)+(50*m7))) //10)
m9 = (m-((50000*m1)+(10000*m2)+(5000*m3)+(1000*m4)+(500*m5)+(100*m6)+(50*m7)))

print("50000원 %d장, 10000원  %d장, 5000원 %d장, 1000원 %d장, 500원 %d개, 100원 %d개, 50원 %d개, 10원 %d개, 바꾸지 못한 돈 ==> %d원" %(m1,m2,m3,m4,m5,m6,m7,m8,m9))
###correction###
m1 = (m // 50000) 
m2 = (m%50000) // 10000
m3 = (m%10000) // 5000
m4 = (m%5000) // 1000
m5 = (m%1000) // 500
m6 = (m%500) // 100
m7 = (m%100) // 50
m8 = (m%50) // 10
m9 = m%10

#%%2019.07.19
###3장 제어문

##3-1 if문

money = 0    #True
if money :    #다른 언어와 달리 if문에 :이 붙는다
    print("돈이 있으니")
    print("택시를 타고 가라")
else :
    print("걸어 가라")

a = 200
if a < 100 :
    print("100보다 작군요.")
else : 
    print("100보다 크군요")

    #비교연산자
x = 3
y = 2

x > y  #True
x < y  #False
x == y #False
x != y #True

money = 2000
if money >= 3000 : 
    print("택시를 타고 가라")
else :
    print("걸어가라")
###########################
print("Tell me your age?")
myage = int(input())
if myage < 30 :
    print("Welcome to the Club.")
else : 
    print("Oh! No. You are not accepted.")
###########################
grade = int(input("점수: "))
if grade >= 60:
    print("합격입니다.")
else : 
    print("불합격입니다.")
###########################
number = int(input("숫자를 입력하세요: " ))
if number%2 == 0:
    print("짝수입니다.")
else :
    print("홀수를 입력하셨군요.")
##########################
temp = float(input("현재 기온을 입력하세요:" )) #기온은 소수점이 있으므로 부동소수점 타입으로 설정
if temp >= 30:
    print("반바지를 입으세요.")
else :
    print("긴바지를 입으세요.")
print("이제 나가서 운동하세요")
###########################
money = 2000
card = 1
if money >= 3000 or card:   #둘 중 하나만 만족하면 참 
    print("택시를 타고 가라")
else :
    print("걸어가라")
##########################
money = 2000
card = 1
if money >= 3000 and card:   #둘 다 만족해야 참
    print("택시를 타고 가라")
else :
    print("걸어가라")

#x in s, not in s 
1 in [1,2,3]      #True
1 not in [1,2,3]  #False
    
     #리스트를 이용한 조건문
pocket = ['paper', 'cellphone', 'money']
if 'money' in pocket :
    print("택시를 타고 가라")
else :
    print("걸어가라")

    #참일시 아무것도 하지 않고 빠져나오기
pocket = ['paper', 'cellphone', 'money'] 
if 'money' in pocket :
    pass                   
else :
    print("카드를 꺼내라")

    #중첩조건문
pocket = ['paper', 'cellphone'] 
card = True
if 'money' in pocket :            
    print("택시를 타고 가라")
else :
    if card :                   
        print("택시를 타고 가라")
    else : 
        print("걸어가라")
        
    ##위와 같이 복잡한 중첩 조건문을 피하기 위해 elif를 사용한다.
pocket = ['paper', 'cellphone'] 
card = True
if 'money' in pocket :            
    print("택시를 타고 가라")
elif card : 
    print("택시를 타고 가라")
else : 
    print("걸어가라")

    ##elif 예제
grade = int(input("점수를 입력하세요: "))
if grade >= 90:
    print("A")
elif grade >= 80:
    print("B")
elif grade >= 70:
    print("C")
elif grade >= 60 :
    print("D")
else :
    print("F")
print("학점입니다")

    #3-2 while문
treeHit = 0
while treeHit < 10 :
    treeHit = treeHit + 1
    print("나무를 %d번 찍었습니다." % treeHit)
    if treeHit == 10 :
        print("나무 넘어갑니다.")
        
     ##while문 예제 : 1 -10까지 출력

number = 1
while number < 11 :
    print(number)
    number = number + 1
   
number = 1
while number < 11 :
    print(number, end = " ")  #옆으로 연속해서 출력하기
    number = number + 1
   
    # 1- 10까지 합계
number = 1
sum = 0
while number < 11:
    sum = sum + number
    number = number + 1
print(sum)

    #3배수 합계 
number = 1
sum = 0
while number < 4:
    sum = sum + number*3
    number = number + 1
print(sum)

print(sum[i for i in range(10)
    if x%3 == 0])

    #while문 강제로 빠져나가기
coffee = 10
money = 300
while money : 
    print("돈을 받았으니 커피를 줍니다.")
    coffee = coffee - 1
    print("남은 커피의 양은 %d개입니다." % coffee)
    if not coffee :
        print("커치가 다 떨어졌습니다. 판매를 중지합니다.")
        break

    ##3-3 for문
for i in ["안녕하세요", "안녕하세요", "안녕하세요"]:   #3번 반복
    print(i)

for i in range(10) :        #10번 반복
    print("안녕하세요")

test_list = ['one','two','three']
for i in test_list : 
    print(i)

a = [(1,2), (3,4),(5,6)]
for (first, last) in a :
    print(first + last)  #튜플 안의 숫자를 합산해서 출력

marks = [90, 25, 67, 45, 80]
number = 0
for mark in marks :
    number = number + 1
    if mark >= 60 : 
        print("%d번 학생은 합격입니다." % number)
    else : 
        print("%d번 학생은 불합격입니다." % number)


    #continue 사용하기
marks = [90, 25, 67, 45, 80]
number = 0
for mark in marks :
    number = number + 1
    if mark < 60 : 
        continue  #60점 이하의 점수는 출력없이 다시 처음으로 돌아간다.
    print("%d번 학생 축하합니다. 합격입니다." % number)

    #불합격생만 출력하기
marks = [90, 25, 67, 45, 80]
number = 0
for mark in marks :
    number = number + 1
    if mark < 60 : 
        print("%d번 학생 불합격입니다." % number)

    #for문과 함께 사용하는 range함수
sum = 0
for i in range(1, 11):  #1 - 10까지 /range(시작숫자, 끝 숫자+1) 마지막숫자 불포함
    sum = sum + i
print(sum)

    #range(초기값, 최종값+1, 증감치)
#1 - 10까지 1씩 증가시켜 출력
for i in range(1,11,1):       
    print(i)   

#1 - 10까지 2씩 증가시켜 출력
for i in range(1,11,2):       
    print(i)   
    
#증감치가 1일때 생략 가능 
for i in range(1,11):      
    print(i)   

sum = 0
for i in range(1,11) :
    sum = sum + i
    print("%d 합 : %d" %(i, sum))

# 1 - 10까지 홀수의 합
sum = 0
for i in range(1,11,2) :
    sum = sum + i
    print("%d 합 : %d" %(i, sum))

# 500 - 1000까지 홀수의 합
sum = 0
for i in range(501,1001,2) :
    sum = sum + i
    print("%d 합 : %d" %(i, sum))

# 구구단 2단 출력
gu = 2
for i in range(1, 10):
    print("%d x %d = %d" %(gu, i, gu*i))

# 구구단 9단까지 출력
for i in range(2,10): 
    for j in range(1,10) :
        print(i*j, end = " ")  #end = " "를 넣어주면 값을 옆으로 이어서 출력한다.
    print('')  #줄을 바꿔서 출력한다.

#1. if else예제
weight = float(input("짐의 무게를 입력하세요: "))
if weight >= 20 :
    print("무거운 짐은 20000원을 내셔야 합니다.")
else :
    print("짐에 대한 수수료는 없습니다.")
print("감사합니다.")


#2. if 예제
bill = int(input("구입 금액을 입력하시오: "))
if bill >= 100000:
    bill = bill*0.95
else: 
    pass

print("지불 금액은 %d 입니다." %bill)

#3. elif 예제
month = int(input("월을 입력하시오 :"))
if month == 2 :
    print("월의 날수는 28일")
elif month in [4,6,9,11] :
    print("월의 날수는 30일")  
else : 
    print("월의 날수는 31일")

#4-1 for문 예제
for j in ["파이썬", "알", "자바", "C" ] :
    print("안녕!" + j)
    
#4-2 
a = int(input("시작값 : "))
b = int(input("최종값 : "))
c = int(input("증가값 : "))
sum = 0
for i in range(a, b+1, c):
    sum = sum + i
    
print("%d에서 %d까지 %d씩 증가시킨 값을 합계: %d" %(a,b,c,sum))

#역순으로 출력하기
for i in range(10, 1, -2):
    print(i)
    
for j in reversed(["파이썬", "알", "자바", "C" ]) :
    print("안녕!" + j)

#146p 연습문제    
#1. 다음 코드의 결과값은?
a = "Life is too short, you need python"
if "wife" in a  :                            #False
    print("wife")
elif "python" in a and "you" not in a :      #False
    print("python")
elif "shirt" not in a :                      #True
    print("shirt") 
elif "need" in a :                        
    print("need")
else : 
    print("none")

#2. while문을 사용해 1부터 1000까지의 자연수 중 3의 배수의 합을 구해 보자.
result = 0
i = 1
while i <= 1000 : 
    if i%3 == 0 :
        result += i
    i += 1 
    
print(result)
    
#3. while문을 사용하여 다음과 같이 별을 표시하는 프로그램을 작성해보자.
i = 0
while True : 
    i += 1
    if i > 5 :
        break
    print('*'*i)

#4. for문을 사용해 1부터 100까지의 숫자를 출력해보자.
for i in range(1, 101):
    print(i)

#5. A학급에 총 10명의 학생이 있다. 이 학생들의 중간고사 점수는 다음과 같다.
#for문을 사용하여 A학급의 평균 점수를 구해 보자.
A = [70,60,55,75,95,90,80,80,85,100]
total = 0
for score in A:
    total +=score
average = total/len(A)
print(average)

#6. 아래 식을 내포함수로 바꾸기
numbers = [1,2,3,4,5]
result = []
for n in numbers :
    if n % 2 == 1 :
        result.append(n*2)
print(result)      

numbers = [1,2,3,4,5]
result = [n*2 for n in numbers if n % 2 == 1]
print(result)   

#%%2019.07.22
    ###4.함수
    
#함수를 쓰지 않고 만들기
coffee = 0
coffee = int(input("어떤 커피 드릴까요?(1:보통, 2:설탕, 3:블랙)"))
print()
print("#1. 뜨거운 물을 준비한다.");
print("#2. 종이컵을 준비한다.");
      
if coffee == 1 :
    print("#3. 보통커피를 탄다.")
elif coffee == 2:
    print("#3. 설탕커피를 탄다.")
elif coffee == 3:
    print("#3. 블랙커피를 탄다.")
else : 
    print("#3. 아무거나 탄다.\n")
print("#4. 물을 붓는다.");
print("#5. 스푼으로 젓는다.");
print()
print("손님~ 커피 여기 있습니다.");

####함수를 써서 만들기 : 반복적인 코드를 자동화하기 위해 함수를 선언한다.
#def(매개변수): 수행할 문장1
  
#변수 선언부분
coffee = 0

#함수 선언 부분
def coffee_machine(button):
    print("#1. 뜨거운 물을 준비한다.");
    print("#2. 종이컵을 준비한다.");
    if button == 1 :
        print("#3. 보통커피를 탄다.")
    elif button == 2:
        print("#3. 설탕커피를 탄다.")
    elif button == 3:
        print("#3. 블랙커피를 탄다.")
    else : 
        print("#3. 아무거나 탄다.\n")
              
print("#4. 물을 붓는다.");
print("#5. 스푼으로 젓는다.");
print()

##메인 코드##     
coffee = int(input("A손님, 어떤 커피 드릴까요?(1:보통, 2:설탕, 3:블랙)")) 
coffee_machine(coffee)
print("A손님~ 커피 여기 있습니다.")

coffee = int(input("B손님, 어떤 커피 드릴까요?(1:보통, 2:설탕, 3:블랙)")) 
coffee_machine(coffee)
print("B손님~ 커피 여기 있습니다.")

coffee = int(input("C손님, 어떤 커피 드릴까요?(1:보통, 2:설탕, 3:블랙)")) 
coffee_machine(coffee)
print("C손님~ 커피 여기 있습니다.")

##함수 : 실행문의 집합
## 반복적으로 사용되는 코드가 있을 경우 효과적인 재사용을 위해 함수로 구현
##복잡한 코드를 단위 기능별로 분리하고 효과적으로 관리하기 위한 목적으로도 함수 사용

##함수 선언
def sum(a, b):
    result = a + b
    return result
##전역 변수 선언
a = sum(3, 4)
print(a)

##함수 선언
def plus(v1, v2) :
    result = 0
    result = v1 + v2
    return result
##전역 변수 선언
hap = 0
hap = plus(100, 200)
print("100과 200의 plus() 함수 결과는 %d" %hap)

##함수의 실행순서
#1. plus()함수 호출
#2. 함수 실행
#3. 결과 반환
#4. 반환값 대입

    #입력값이 없는 함수
def say():
    return "Hi"

a = say()
print(a)

    #결과값이 없는 함수(print문은 결과값이 아니라 수행할 문장일 뿐이다.)
def sum(a, b) : 
    print("%d, %d의 합은 %d입니다." % (a, b, a+b))
sum(3, 4)

##return value가 있을 수도,없을 수도 있다.
##결과값은 오직 return 명령어로만 돌려 받을 수 있다.
a = sum(3, 4)
print(a)
>>None

    #입력값도 결과값도 없는 함수
def say():
    print("Hi")
say()

    #여러 개의 입력값을 넣을 때 for문을 사용한다
##args는 매개변수를 뜻하며 앞에 *을 붙이면 입력 값들을 전부 모아 튜플을 만들어 준다.
def sum_many(*args) : 
    sum = 0
    for I in args : 
        sum = sum + I
    return sum

result = sum_many(1,2,3)
print(result)

result = sum_many(1,2,3,4,5,6,7,8,9,10)
print(result)

#매개변수로 *args만 사용할 수 있는 것은 아님
#아래는 두개의 매개변수를 사용한다.
def add_mul(choice, *args):
    if choice == "add":
        result = 0
        for i in args : 
            result = result + i
    elif choice == "mul":
        result = 1
        for i in args :
            result = result * i
    return result

result = add_mul('add', 1,2,3,4,5)
print(result)

##매개변수 앞에 *을 두개 붙이면 입력 값들을 전부 모아 딕셔너리를 만들어 준다.
def print_kwargs(**kwargs):
    print(kwargs)

print_kwargs(a = 1)
>>>{'a': 1}

    #함수의 결괏값은 언제나 하나이다.
#결과값이 두 개인 경우 묶어서 하나의 튜플로 출력된다.
#한 함수에서 return을 두번 쓰지 말 것 : return을 만나는 순간 결괏값을 돌려준 뒤 함수를 빠져나간다.
def add_and_mul(a, b):
    return a+b, a*b

result = add_and_mul(2,3)
print(result)

    #입력 인수에 초깃값 미리 설정하기
##기본값을 지정한 입력 인수(man = True)는 모든 인수 중 마지막에만 사용 할 수 있다.
##일반 입력 인수 중간에 기본 값을 지정한 입력 인수를 사용할 수 없음
def say_myself(name, old, man = True) :
    print("나의 이름은 %s 입니다." %name)
    print("나이는 %d살입니다." %old)
    if man : 
        print("남자입니다.")
    else :
        print("여자입니다.")

say_myself("박응용", 27)
say_myself("박응용", 27, True)
say_myself("박응용", 27, False)

    #함수 안에서 선언된 변수의 효력 범위
#함수 내부에서 선언된 변수는 함수 안에서만 사용할 수 있음 -> 지역변수
a = 1
def vartest(a):
    a = a + 1   #a는 지역변수라 a=1 과는 별개의 변수
    return a

vartest(a)   #1 출력
print(a)

a = vartest(a)  #2 출력
print(a)

    #함수 안에서 함수 밖의 변수를 변경하는 방법 : global변수 사용
#일반적으로 권장되지 않음
a = 1
def vartest():
    global a
    a = a + 1
    
vartest(a)   
print(a)

##예제1.두 수의 차를 구하는 함수 작성
def minus(a, b):
    result = a - b
    return result

m = minus(10, 5)
print(m)

##예제2.입력된 2개의 값 중 최대값을 구하는 함수 작성
def max(a, b):
    if a > b :
        return a
    else : 
        return b
 
max(59, 78)


    #4-2 사용자 입력과 출력
#input의 사용 :  입력되는 모든 것을 문자열로 취급한다.
a = input()
print(a)

#print문
print("life" "is" "too short")
>>>lifeistoo short
print("life" + "is" + "too short")
>>>lifeistoo short
print("life", "is", "too short")
>>>life is too short

    #4-3 파일 읽고 쓰기
#파일 생성하기
f = open("C:/Python/새파일.txt", 'w')

for i in range(1, 11):
    data = "%d번째 줄입니다.\n" % i
    f.write(data)
    
f.close()

f = open("C:/Python/새파일.txt", 'r')
line = f.readline()
print(line)
f.close

f = open("C:/Python/새파일.txt", 'r')
while True :
    line = f.readline()
    if not line :  break
    print(line)
f.close()

#readlines()는 모든 라인을 읽어 각 줄을 요소로 갖는 리스트로 리턴한다.
f = open("C:/Python/새파일.txt", 'r')
lines = f.readlines()
for line in lines:
    print(line)
f.close()

#read()는 파일내용 전체를 문자열로 불러온다.
f = open("C:/Python/새파일.txt", 'r')
data = f.read()
print(data)
f.close()

#기존 파일에 내용을 추가할 때는 append 모드를 사용한다.
f = open("C:/Python/새파일.txt", 'a')
for i in range(11, 20):
    data = "%d 번째 줄입니다. \n" % i
    f.write(data)
f.close()


f = open("foo.txt", 'w')
f.write("Life is too short, you need Python")
f.close()
#with를 사용해 close쓰지 않고 파일을 자동으로 닫기.
with open("foo.txt", 'w') as f:
    f.write("Life is too short, you need Python")

f =open("C:/Python/Dream1.txt", 'r')
line_dream = f.read()
print(line_dream)

    #파일 글자의 통계 정보 출력하기
with open ("C:/Python/Dream1.txt", 'r') as my_file:
    contents = my_file.read()
    word_list  =contents.split(" ")   #빈칸 기준으로 분리 리스트
    line_list = contents.split("\n")  #한 줄씩 분리하여 리스트

print("총 글자의 수:", len(contents))
print("총 단어의 수:", len(word_list))
print("총 줄의 수:", len(line_list))

##179p 1.
def is_odd(number):
    if number % 2 == 1:
        return True
    else : 
        return False

is_odd(5)
    
#2. 
def avg_numbers(*args):
    result = 0
    for i in args : 
        result += i
    return result/len(args)

avg_numbers(1,2)
avg_numbers(1,2,3,4,5)

#3.아래 코드의 오류 수정하기
input1 = input("첫번째 숫자를 입력하세요:")
input2 = input("두번째 숫자를 입력하세요:")
total = input1 + input2
print("두 수의 합은 %s 입니다" % total)
##수정 후##
input1 = int(input("첫번째 숫자를 입력하세요:"))
input2 = int(input("두번째 숫자를 입력하세요:"))
total = input1 + input2
print("두 수의 합은 %d 입니다" % total)

#4. 다음 중 출력결과가 다른 것 한개를 골라 보자. -> 3번
print("you" "need" "python")
print("you"+"need"+"python")
print("you", "need", "python")
print("".join(["you", "need", "python"]))

#5. 아래 코드의 오류 수정하기
f1 = open("test.txt", 'w')
f1.write("Life is too short")

f2 = open("test.txt", 'r')
print(f2.read())
##수정 후##
f1 = open("test.txt", 'w')
f1.write("Life is too short")
f1.close()

f2 = open("test.txt", 'r')
print(f2.read())
f2.close()
          
#6. 사용자의 입력을 파일에 저장하는 프로그램 작성하기
user_input = input("저장할 내용을 입력하세요:")
f = open("test.txt", 'a')
f.write(user_input)
f.write("\n")
f.close()

#7. 아래 파일 내용 중 java를 python으로 바꾸어 저장하기
f = open("test.txt", 'r')
body = f.read()
f.close()

body = body.replace("java", "python")

f = open("test.txt", 'w')
f.write(body)
f.close()  

###5장 파이썬 날개 달기
##5-1 클래스
#한 프로그램에서 두 개의 계산기가 필요하다면?
result1 = 0
result2 = 0
def add1(num):
    global result1
    result1 += num
    return result1

def add2(num):
    global result2
    result2 += num
    return result2

print(add1(3)) 
>>3
print(add1(4))  #3을 기억하고 있다가 4와 더해서 7 출력
>>7
print(add2(3))
>>3
print(add2(7))
>>10


#하나의 클래스(과자틀)에서 여러개의 인스턴스를 생성한다(과자)
#클래스를 이용하면 계산기의 개수가 늘어나더라도 인스턴스를 생성하기만 하면 되기 때문에 사용이 간단하다.


#__init__() : 기본생성자로 인스턴스를 생성하면 무조건 호출되는 메서드이다. self외에 별도의 매개변수를 사용하지 않는다.

#이렇게 매개변수가 self만 있는 생성자를 기본 생성자라고 한다.

#매서드의 첫 번째 매개변수에 self를 사용하는 이유는 매서드 안에서 필드(result)에 접근하기 위해서이다. 

##initialize의 약자로 초기화를 의미한다. 언더바 2개가 붙은 것은 파이썬의 예약어

#클래스를 이용한 계산기
class Calculator : 
    def __init__(self):  #self는 매개변수로 생성되는 객체의 값이다.
        self.result = 0
        
    def add(self, num):   #클래스 안에 있는 함수를 method라고 한다
        self.result += num
        return self.result
    
cal1 = Calculator() #cal1은 Calculator()의 인스턴스이다.
cal2 = Calculator()

#생성된 인스턴스는 독립적으로 서로의 영향을 받지 않는다.
print(cal1.add(3))
print(cal1.add(4))
print(cal2.add(3))
print(cal2.add(7))

#사칙연산 클래스1
class FourCal : 
    pass
a = FourCal()
type(a)

#사칙연산 클래스2
a.setdata(4, 2) #관례적으로 첫번째 매개변수는 self를 사용한다.
print(a.first)

class FourCal : 
    def setdata(self, first, second) : 
        self.first = first
        self.second = second

a = FourCal()
b = FourCal()
a.setdata(4, 2) 
print(a.first)
print(a.second)
b.dataset(3, 7)
b.print(b.first)


#사칙연산 클래스4
class FourCal : 
    def setdata(self, first, second) : 
        self.first = first
        self.second = second
    def add(self):
        result = self.first + self.second
        return result
    def sub(self):
        result = self.first - self.second
        return result
    def mul(self):
        result = self.first * self.second
        return result
    def div(self):
        result = self.first / self.second
        return result

a = FourCal()
b = FourCal()
a.setdata(4, 2) 
print(a.first)
print(a.add())
print(a.sub())
print(a.mul())


#문제1. 1~10, 1~100까지의 합을 구하는 함수(sum1) 만들기
def sum1(a, b):
    result = 0
    for i in range(a, b+1):
        result += i
    return result

print(sum1(1,10))
print(sum1(1,100))

#문제2. 두 수의 거듭제곱(지수승)을 구하는 함수(exp)를 만들어 보세요.
def exp(a, b):
    result = (a ** b)
    return result

#for 문으로 만들기
def exp(a, b):
    result = 1
    for i in range(b):
        result *= a
    return result

print(exp(10, 2))  #100

#문제3. 두 수의 합을 구하는 Cal 클래스를 생성해 보세요.
class Cal():
    def setdata(self, first, second) : 
        self.first = first
        self.second = second
    def add(self):
        result = self.first + self.second
        return result

z = Cal()
z.setdata(5, 6)
print(z.add())

#%%2019.07.23

    ##5-2 모듈
#모듈이란 함수나 변수 또는 클래스를 모아 놓은 파일
#다른 파이썬 프로그램에서 불러와 사용할 수 있게끔 만들어진 파이썬 파일이다.

#아래와 같은 함수를 만들어 mod1.py로 저장
def add(a, b):
    return a + b

def sub(a, b):
    return a - b

#모듈을 불러오는 방법
import mod1
print(mod1, add(3,4))
#<module 'mod1' from 'C:\\Users\\a\\mod1.py'> 7 (결과값 출력)

from mod1 import add
add(3,4)
from mod1 import add, sub #특정 함수만 불러오기
from mod1 import*  #모듈 안에 있는 모든 함수 불러오기

#모듈의 생성과 사용
#아래 함수를 Module1.py로 저장
def func1():
    print("Module1.py의 func1()이 호출됨.")

def func2():
    print("Module.py의 func2()가 호출됨.")

def func3():
    print("Module1.py의 func3()가 호출됨.")

#모듈 사용하기
import Module1
Module1.func1()
Module1.func2()
Module1.func3()

import mod55 #print 문이 같이 실행됨

#선택적 import : 모듈파일 안에 함수만 가져오기
#__name__ : 파이썬 내에서 쓰이는 특별한 변수로 직접 실행시 __main__값 저장, import시에는 모듈명 값을 저장한다.
#if __name__ == "__main__": 직접 실행할 시에는 참, import 할때는 거짓이 되어 그 아래 실행문이 실행되지 않는다.

if __name == "__main___":
    print(add("a", 1))
    print(add(1, 4 ))
    print(add(10, 10.4))

import mod1
print(add("a", 1))
print(add(1, 4 ))
print(add(10, 10.4))

#클래스나 변수를 포함한 모듈
#아래 결과 mod2에 저장
PI = 3.141592
class Math : 
    def solv(self, r):
        return PI * (r **2)

def sum(a, b):
    return a + b

if __name__ == "__main__":
    print(PI)
    a = Math()
    print(a.solv(2))
    print(sum(PI, 4.4))

import mod2  #print문이 자동으로 실행되지 않음

#sys 모듈은 파이썬을 설치할 때 함께 설치되는 라이브러리 모듈이다.
import sys
sys.path

#모듈 추가하기
sys.path.append("C:/Python/Mymoduels")

    ##5-3 패키지
#패키지는 파이썬 모듈을 계층적으로 관리하는 도구.
#디렉터리와 파이썬 모듈로 구성된다.
#직접 실습해보기


    ##5-4 예외처리
#try, except 구문을 통해서 오류처리 지원
#try: .... except [발생 오류[as 오류 메시지 변수]]:
    
try : 
    4 / 0
except ZeroDivisionError as e:
    print(e)

>>>>division by zero

#try..else : foo.txt 파일이 없으면 except 수행, 있으면 else 수행
try : 
    f = open('foo.txt', 'r')
except FileNotFoundError as e : 
    print(str(e))
else : 
    data = f.read()
    f.close()

#try....finally : finally절은 try문 수행 도중 예외 발생 여부에 상관없이 항상 수행
f = open('foo.txt', 'w')  
try :
    print('hihi')
finally : 
    f.close()
        
#파이썬 내장오류 보기 https://docs.python.org/3/library/exceptions.html

#여러개의 오류 처리하기(인덱싱 오류가 먼저 발생했으므로 다음 오류는 출력되지 않는다.)
try: 
    a = [1,2]    
    print(a[3])
    4 / 0
except ZeroDivisionError : 
    print("0으로 나눌 수 없습니다.")
except IndexError : 
    print("인덱싱 할 수 없습니다.")


#오류 회피하기 : 발생한 오류에 대해 특별한 처리 없이 정상 흐름으로 돌리는 방법
try : 
    f = open("나없는파일", 'r')
except FileNotFoundError : 
    pass

#raise를 사용해 오류 일부러 발생시키기
class Bird : 
    def fly(self):
        raise NotImplementedError

class Eagle(Bird):
    def fly(self):
        print("very fast")

eagle = Eagle()
eagle.fly()

    ##5-5 내장함수
#abs : 입력된 숫자의 절대값을 돌려주는 함수
abs(3)
abs(-3)

#all(x) : 반복 가능한 자료형(리스트, 튜플, 딕셔너리, 집합 등등) x를 입력 인수로 받아 참, 거짓을 반환. x가 모두 참이면 True, 거짓이 하나라도 있으면 False를 반환.
all([1, 2, 3])

#any(x): 하나라도 참이 있으면 True, x가 모두 거짓일 때만 False출력
any([1,2,3])
>>True

#chr : 아스키코드 값을 입력받아 그 코드에 해당하는 문자를 출력
chr(97)

#dir : 객체가 가지고 있는 변수나 함수를 보여준다.
dir([1,2,3])

#divmod(a, b) : 몫과 나머지 구하기
divmod(7, 3)

#enumerate : 익덱스 값과 객체를 돌려준다.
for i, name in enumerate(['body', 'foo', 'bar']):
    print (i, name)

#eval : 문자열을 입력받아 결괏값을 돌려주는 함수
eval('1 + 2')
eval("'hi' + 'a'")

#filter
def positive(x): #positive 함수는 입력된 리스트의 양수 값만 리턴하는 함수
    return x > 0
print(list(filter(positive, [1, -3, 2, 0, -5, 6])))

#lambda를 사용해 수식을 짧게 만들 수 있다.
print(list(filter(lambda x : x > 0, [1, -3, 2, 0, -5, 6] )))

#hex(x): 정수 값을 입력받아 16진수로 변환하여 돌려주는 함수
hex(234)

#id : 객체를 입력받아 객체의 고유 주소 값(reference)을 돌려주는 함수
a = 3
id(3)
id(a)
b = a
id(b)

#input() :  사용자 입력을 받는 함수
#int() :  숫자를 정수형태로 돌려줌
int('11', 2) #이진수에서 11로 표현된 숫자 = 3을 출력

#isinstance(object, class) : 입력받은 인스턴스가 그 클래스의 인스턴스인지를 판단하여 참, 거짓을 돌려준다.

#lambda : 함수를 한 줄로 간결하게 만들때 사용한다.
sum = lambda a, b : a + b  #(lambda 인자 : 표현식)
sum(3, 4)
myList = [lambda a, b : a+ b, lambda a, b : a* b]  #myList에 람다 함수가 2개 추가
myList[0](3, 4)

#len() :  입력값의 길이를 반환
#list() : 자료형을 리스트로 돌려주는 함수
#max()
#min()
#open()
#pow(x, y) : x의 y제곱 결과값을 반환
#range
#round
#sorted : 입력값을 정렬 후 리스트로 반환
sorted([3,1,2])
sorted(['a', 'c', 'b'])
sorted("Zero")

#tuple
tuple("abc")

#type() : 입력값의 자료형을 알려준다
type("abc")

#zip() : 동일한 개수로 이루어진 자료형을 묶어준다.
list(zip([1,2,3], [4,5,6]))
list(zip)

    ##5-6

#Glob : 특정 디렉터리에 있는 파일 이름을 모두 알아야 할 때
import glob

#time 1
import time
time.time()

#random

#webbrowser

#threading

#%%2019.07.23 Pandas on Jupyter Notebook
#파이썬 패키지 관리자 - pip
#파이썬 패키지(라이브러리): 프로그래밍에 필요한 기능을 미리 작성하여 둔 것을 라이브러리라고 부른다.
#시작 > 모든 프로그램 > Anaconda3 > Anaconda Prompt

#pip list : 설치된 파이썬 패키지 목록 조회
pip list -- format=columns

#pip install <package name> : 파이썬 패키지 설치
pip install beautifulsoup4

#pip uninstall <package name> : 파이썬 패키지 삭제  
pip uninstall beautifulsoup4

#pip의 버젼을 최신으로 유지하는 명령
C:\Users\a> python -m pip install -U pip
*. m 옵션 : 모듈을 실행하는 명령
*. U 옵션 : 관련 모듈을 업데이트 하라는 명령

#절대 경로 C:\Users\a\Anaconda3\DataScience\source
#상대 경로 DataScience\source --> ../data/*.tsv

#판다스는 데이터프레임과 시리즈라는 자료형과 데이터 분석을 위한 다양한 기능을 제공하는 파이썬 라이브러리이다.

s = pd.Series([9904312, 3448737, 2890451, 2466052],
              index=["서울", "부산", "인천", "대구"])

#갭마인더 데이터 집합 불러오기
import pandas
df = pandas.read_csv('../data/gapminder.tsv', sep = '\t')
#pandas는 줄여서 pd라고 설정해준다
import pandas as pd
df = pd.read_csv('../data/gapminder.tsv', sep = '\t')
df.head()  #상위 다섯줄만 불러오기

#가져온 데이터의 형태 확인
df.shape
#가져온 데이터의 열 정보 확인
df.columns
#가져온 데이터 목록의 전체 정보 확인
df.dtypes, df.info()
#가져온 데이터의 자료형 확인
type(df)

#판다스 자료형은 파이썬 자료형과 이름이 조금 다르다
float64 : float
int64 : int
object : string
datetime64 : datetime

#열 단위로 데이터 추출하기
country_df = df['country']
country_df.head()
country_df.tail()
#자료형 확인 : series 
#시리즈 : 데이터 프레임의 행,컬럼. 값(value) + 인덱스(index)으로 구성됨
type(country_df)

#자료형 확인 : dataframe 
#데이터 프레임: 시리즈가 모여서 구성된다. 로우와 커럼으로 구성됨
subset = df[['country', 'continent', 'year']]
type(subset)

#데이터를 행 단위로 추출하려면 loc나 iloc를 사용한다.
df.loc[0]
print(df.loc[1])

#마지막 행 추출
print(df.shape)
number_of_rows = df.shape[0]

last_row = number_of_rows - 1
print(df.loc[last_row])

#리스트가 0, 99, 999인 데이터를 한번에 추출하기
#리스트가 원하는 인덱스를 담아 loc 속성에 전달
print(df.loc[[0, 99, 999]])

#loc : 인덱스를 기준으로 행 데이터 추출 index location
#iloc : 행번호를 기준으로 데이터 추출  index position
#iloc 속성은 음수를 사용해도 데이터를 추출할 수 있다.
print(df.iloc[1])
print(df.iloc[99])
print(df.iloc[-1])
print(df.iloc[[0, 99, 999]])

###데이터 추출하기 - 슬라이싱 구문, range method
#1. 슬라이싱 구문 사용
subset = df.loc[:, ['year', 'pop']]
print(subset.head())

#데이터를 추출할 행을 먼저 지정하고 열을 지정하는 방법으로 데이터를 추출
#df.loc[[행], [열]] : 행과 열을 지정하는 방법은 슬라이싱과 range method를 사용

subset = df.loc[:, ['year', 'pop']]  #행은 전부, 열은 year와 pop만 가져오기
print(subset.head())

subset = df.iloc[:, [2,4,-1]] #세번째, 다섯번째, 뒤에서 첫번째 열만 가져오기
print(subset.head())


#2. range 사용
small_range = list(range(5))
print(small_range)

subset = df.iloc[:, small_range]
print(subset.head())

small_range = list(range(3, 6))
print(small_range)

subset = df.iloc[:, small_range]
print(subset.head())

#loc 속성의 열지정값에 정수  리스트를 전달하면 오류 발생
#반대로 iloc속성의 열지정값에 문자열 리스트를 전달하면 오류 발생
print(df.loc[[0, 99, 999], ['country', 'lifeExp', 'gdpPercap']])
print(df.iloc[[0, 99, 999], [0, 3, 5]])


###그래프 그리기

#lifeExp 열을 연도별로 그룹화하여 평균 계산하기
global_life_exp = df.groupby('year')['lifeExp'].mean()

#그룹화한 데이터의 빈도수 'nunique 메서드 사용
print(df.groupby('continent')['country'].nunique())

#그래프 관련 라이브러리 불러오기
%matplotlib inline
import matplotlib.pyplot as plt

global_yearly_life_expectancy = df.groupby('year')['lifeExp'].mean()
print(global_yearly_life_expectancy)

global_yearly_life_expectancy.plot()


    #연습문제
#1. 첨부한 파일을 불러오세요.(CCTV.csv)
cctv = pandas.read_csv('../data/CCTV.csv', sep = ',')

#2. 상위 5개의 데이터만 불러오세요.
cctv.head()

#3. 하위 3개의 데이터만 불러오세요.
cctv.tail()

#4. 구이름, 한국인 비율, CCTV 비율 열만 출력해 보세요.
print(cctv.loc[:,['구별', '한국인', 'CCTV비율']])

#5. 7, 10, 20 행만 출력해 보세요. 
print(df.loc[[7, 10, 20],:])

#6. 칼럼명만 출력하세요
cctv.columns

#%% 2019.07.24 Pandas on Jupyter Notebook

#데이터 프레임과 시리즈는 리스트나 딕셔너리와 비슷하지만 데이터를 다루는데 더 특화되어 있다.

#1. 시리즈 만들기
import pandas as pd
s = pd.Series(['apple', 33])
print(s)

#인덱스가 자동으로 0부터 붙는다
s = pd.Series(['Jane', 'Student'])
s

#2. 시리즈를 생성할 문자열을 인덱스로 지정할 수도 있다.
#문자열을 인덱스로 지정하려면 시리즈 메서드의 인덱스 인자를 통해 사용하고자 하는 문자열을 리스트에 담아 전달한다.
s = pd.Series(['Jane', 'student'], index = ['Person', 'Job'])
print(s)

#3. 딕셔너리로 데이터프레임 생성하기
#딕셔너리를 데이타프레임 클래스에 전달해야 함.
#데이터프레임의 행, 컬럼은 모두 시리즈이다. 아래 예제는 5개의 시리즈로 구성된 DF이다.
scientists = pd.DataFrame({
    'Name' : ['Rosaline Franklin', 'William Gosset'],
    'Occupation' : ['Chemist', 'Statistician'],
    'Born' : ['1920-07-25', '1876-06-13'],
    'Died' : ['1958-04-16', '1937-10-16'],
    'Age' : [37, 61]})
    
scientists
#딕셔너리는 순서가 없기 때문에 입력한 순서대로 출력하지 않는다.

#컬럼과 로우에 각각 인덱스를 지정하기
scientists = pd.DataFrame(
    data = {
    'Occupation' : ['Chemist', 'Statistician'],
    'Born' : ['1920-07-25', '1876-06-13'],
    'Died' : ['1958-04-16', '1937-10-16'],
    'Age' : [37, 61]},
    index = ['Rosaline Franklin', 'William Gosset'],
    columns = ['Occupation','Born','Died','Age' ])

scientists
#인덱스가 딕셔너리가 아니기 때문에 입력한 순서대로 출력한다.

#순서가 보장된 딕셔너리를 만들려면 OrderedDict 클래스를 사용한다.
from collections import OrderedDict

scientists = pd.DataFrame(OrderedDict([
    ('Name', ['Rosaline Franklin', 'William Gosset']),
    ('Occupation', ['Chemist', 'Statistician']),
    ('Born', ['1920-07-25', '1876-06-13']),
    ('Died' , ['1958-04-16', '1937-10-16']),
    ('Age' , [37, 61])
]))
    
scientists

#데이터프레임에서 시리즈 선택하기
scientists = pd.DataFrame(
    data = {
    'Occupation' : ['Chemist', 'Statistician'],
    'Born' : ['1920-07-25', '1876-06-13'],
    'Died' : ['1958-04-16', '1937-10-16'],
    'Age' : [37, 61]},
    index = ['Rosaline Franklin', 'William Gosset'],
    columns = ['Occupation','Born','Died','Age' ])

first_row = scientists.loc['William Gosset']
type(first_row)
first_row

    #index, values 속성과 keys 메서드 사용하기
#1. index 속성 사용하기
print(first_row.index) 
#시리즈에 인덱스가 들어가 있음

#2.values 속성 사용하기
#values 속성에는 시리즈의 데이터가 들어 있다.
print(first_row.values)

#3. keys 메서드 사용하기
#keys 메서드는 index속성과 같은 역할을 한다.
print(first_row.keys())

#4. index 속성 응용하기
print(first_row.index[0])

#5. keys 메서드와 index 속성 응용하기
print(first_row.keys()[0])

#시리즈의 mean, min, max, std 메서드 사용하기
ages = scientists['Age']
ages
print(ages.mean())
print(ages.min())
print(ages.max())
print(ages.std()) #표준편차

#시리즈와 불린 추출 사용하기
scientists = pd.read_csv('../data/scientists.csv')
scientists
ages = scientists['Age']
ages.max()
ages.mean()

#평균나이보다 많은 사람만 추출
print(ages[ages > ages.mean()])

#불린 값으로 추출
print(ages > ages.mean())

#True인 값만 출력
b_val = [True,True, False,False,True, True, False, True] 
print(ages[b_val])

    #벡터와 스칼라로 브로드캐스팅 수행하기
#시리즈처럼 여러 개의 값을 가진 데이터를 벡터라고 하고 단순 크기를 나타내는 데이터를 스칼라라고 합니다.
#벡터와 벡터의 연산(두 개의 인덱스 값으로 연산)
print(ages + ages)
print(ages * ages) 

#벡터와 스칼라의 연산 :  브로드 캐스팅(시리즈, 데이터프레임을 한 번에 계산하는 것) 
print(ages + 100)
print(ages * 2)

#서로 다른 갯수의 두 벡터를 연산하면 NaN을 반환한다.
pd.Series([1, 100])
ages + pd.Series([1, 100])

#인덱스 역순으로 정렬
rev_ages = ages.sort_index(ascending=False)
print(rev_ages)
#인덱스 순서가 바뀌었어도 벡터와 벡터의 연산은 일치하는 인덱스 값끼리 수행한다
print(ages + rev_ages)

#불린 추출과 브로드캐스팅
scientists[scientists['Age'] > scientists['Age'].mean()]
scientists.loc[[True, True, False, True]]

#데이터 프레임에 스칼라 값을 적용하면....
scientists * 2  #한 줄의 명령어로 모든 열에 연산 적용


#시리즈와 데이터프레임의 데이터 처리하기
print(scientists['Born'].dtype)
print(scientists['Died'].dtype)  #object : string type

#문자열을 날짜형으로 바꿔준다.
born_datetime = pd.to_datetime(scientists['Born'], format = '%Y-%m-%d')
print(born_datetime)

died_datetime = pd.to_datetime(scientists['Died'], format ='%Y-%m-%d')
print(died_datetime)

#컬럼 추가하기
scientists['born_dt'], scientists['died_dt'] =  (born_datetime, died_datetime)
scientists.head()

#다음줄을 넘어간 코드를 이어주기 위해서 \를 붙여준다.
scientists['age_days_dt'] = (scientists['died_dt'] - \
                            scientists['born_dt'])
scientists

#시리즈, 데이터프레임의 데이터 섞기
print(scientists['Age'])

import random
random.seed(42)  #난수 고정
random.shuffle(scientists['Age'])  #데이터 섞기
print(scientists['Age'])

#데이터프레임의 열 삭제하기
print(scientists.columns)
scientists_dropped = scientists.drop(['Age'], axis = 1) # axis= 1 열 / axis = 0 행
print(scientists_dropped.columns)

#피클로 저장하기
names = scientists['Name']
names.to_pickle('../output/scientists_names_series.pickle')

scientists.to_pickle('../output/scientists_df.pickle')

scientists_names_from_pickle = pd.read_pickle('../output/scientists_names_series.pickle')

print(scientists_names_from_pickle)


scientists_from_pickle =  pd.read_pickle('../output/scientists_df.pickle')

print(scientists_from_pickle)

#CSV파일과 TSV 파일로 저장하기
names.to_csv('../output/scientists_names_series.csv')
scientists.to_csv('../output/scientists_df.tsv', sep = '\t')
scientists.to_csv('../output/scientists_df_no_index.csv', index = False) #인덱스 빼고 저장하기

#시리즈는 to_frame이라는 메서드를 사용해 데이트프레임으로 변환한 다음 엑셀 파일로 저장해야 한다.
names_df = names.to_frame()

#엑셀로 저장하려면 각각의 라이브러리가 필요하다(xlwt 와 openpyxl)
import xlwt
names_df.to_excel('../output/scientists_names_series_df.xls')

import openpyxl
names_df.to_excel('../output/scientists_names_series_df.xlsx')


#1. 앤스콤 데이터 집합 불러오기
import seaborn as sns
anscombe = sns.load_dataset("anscombe", engine = 'python')
anscombe

%matplotlib inline
import matplotlib.pyplot as plt

dataset_1 = anscombe[anscombe['dataset'] == 'I']
dataset_1

#선그래프는 plot메서드로 그릴 수 있다. Plot메서드에 x, y축 데이터
plt.plot(dataset_1['x'], dataset_1['y'])

#점 그래프 (세번째 인자에 'o')
plt.plot(dataset_1['x'], dataset_1['y'], '^')

#mapplotlib 라이브러리로 그래프 그리기
#1. 전체 그래프가 위치할 기본 틀을 만들고
#2. 그래프를 그려 넣을 격
#3. 격자에 그래프를 하나씩 추가, 순서는 왼쪽 - > 오른쪽
#4. 1행이 차면 2번째 행에 그려 넣는다.


dataset_2 = anscombe[anscombe['dataset'] == 'II']
dataset_3 = anscombe[anscombe['dataset'] == 'III']
dataset_4 = anscombe[anscombe['dataset'] == 'IV']

fig = plt.figure()
axes1 = fig.add_subplot(2, 2, 1) #행의 크기, 열의 크기
axes2 = fig.add_subplot(2, 2, 2) 
axes3 = fig.add_subplot(2, 2, 3) 
axes4 = fig.add_subplot(2, 2, 4) 

axes1.plot(dataset_1['x'], dataset_1['y'], 'o')
axes2.plot(dataset_2['x'], dataset_2['y'], 'o')
axes3.plot(dataset_3['x'], dataset_3['y'], 'o')
axes4.plot(dataset_4['x'], dataset_4['y'], 'o')
fig  #그래프를 확인하는 명령어

#제목추가
axes1.set_title("dataset_1")
axes2.set_title("dataset_2")
axes3.set_title("dataset_3")
axes4.set_title("dataset_4")

#전체타이틀 붙이기
fig.suptitle("Anscombe Data")
fig


#기초 그래프 그리기 : 히스토그램, 산점도, 박스 그래프
tips = sns.load_dataset("tips")
tips.head()

#fig(기본틀), 그래프 격자(axes1)
fig = plt.figure()
axes1 = fig.add_subplot(1, 1, 1) #1행 1열 1그래프

#1. 히스토그램은 df의 열 데이터 분포와 빈도를 살펴보는 용도로 자주 사용
#변수를 하나만 사용해서 그린 '일변량 그래프'
axes1.hist(tips['total_bill'], bins = 10)
#bins = 10 -> x축의 간격을 10으로 조정
axes1.set_title('Histogram of Total Bill')
axes1.set_xlabel('Frequency')
axes1.set_ylabel('Total Bill')

fig

#2. 산점도 그래프
#변수 2개 사용한 '이변량 그래프' - total_bill 열에 따른 tip 열의 분포를 나타낸 산점도 그래프
scatter_plot = plt.figure()
axes1 = scatter_plot.add_subplot(1, 1, 1)
axes1.scatter(tips['total_bill'], tips['tip'])
axes1.set_title('Scatterplot of Total Bill vs Tip')
axes1.set_xlabel('Total Bill')
axes1.set_ylabel('Tip')

#3. 박스 그래프
# 이산형 변수 - female, male 처럼 명확하게 구분되는 값
#연속형 변수 - tip와 같이 명확하게 셀 수 없는 변위의 값
boxplot = plt.figure()
axes1 = boxplot.add_subplot(1, 1, 1)

axes1.boxplot(
    [tips[tips['sex'] == 'Female']['tip'],
             tips[tips['sex'] == 'Male']['tip']],
             labels = ['Female', 'Male'])

axes1.set_xlabel('Sex')
axes1.set_ylabel('Tip')
axes1.set_title('Boxplot of Tips by Sex')

#다변량 데이터로 다변량 그래프 그리기 - 산점도 그래프
#*다변량 : 3개 이상의 변수를 사용
#성별을 새 변수로 추가(문자열은 산점도 그래프의 색상을 지정)
def recode_sex(sex):
    if sex == 'Female' :
        return 0
    else : 
        return 1
    
#%%2019.07.25 Matplotlib on Jupyter Notebook
        
##데이터를 시각적으로 표현하기 - matplotlib 기초
import matplotlib.pyplot as plt
%matplotlib inline

x = [0,1,2,3,4,5,6,7,8,9,10]
y = [0,1,2,3,4,5,4,3,2,1,0]
plt.plot(x, y)
plt.show()

plt.figure(figsize = (10, 6))
plt.plot(x, y)
plt.grid()
plt.show()

#넘파이로 사인 그래프 그리기
import numpy as np
t = np.arange(0, 2*np.pi, 0.01) #넘파이의 파이값 * 2/ 0.01 간격으로 표시

#numpy.arange([start, ] stop, [step, ] dtype=None)
#np.arange(3, 7, 2) 의 경우 start=3, stop=7, step=2 이므로 반열린구간 [3, 7) 에서 3을 시작으로 2 간격으로 떨어진 수들을 array[3, 5] 의 형태로 반환

plt.figure(figsize = (10, 6))
plt.plot(t, np.sin(t))
plt.grid()
plt.show()

#라벨 붙이기
plt.figure(figsize = (10, 6))
plt.plot(t, np.sin(t))
plt.grid()
plt.title('sin')
plt.xlabel('sec')
plt.ylabel('sin')
plt.show()

#사인, 코사인 그래프에 레전드 추가하기
plt.figure(figsize = (10, 6))
plt.plot(t, np.sin(t), label = 'sin')
plt.plot(t, np.cos(t), label = 'cos')
plt.grid()
plt.legend()
plt.title('sin')
plt.xlabel('sec')
plt.ylabel('amplitude')
plt.show()

#옵션추가
plt.figure(figsize = (10, 6))
plt.plot(t, np.sin(t),lw = 3, label = 'sin') #선의 굵기 = lw,
plt.plot(t, np.cos(t), 'r', label = 'cos') #빨간색 = 'r', 파린색 : 'b'
plt.grid()
plt.legend()
plt.title('sin')
plt.xlabel('sec')
plt.ylabel('amplitude')
plt.show()

    #단변량 그래프 그리기 - 히스토그램
#seaborn 라이브러리는 matplotlib 라이브러리를 기반으로 만든 라이브러리(조금 더 화려한 그래프를 그려준다)
import seaborn as sns
tips = sns.load_dataset("tips")

#seaborn라이브러리로 히스토그램을 그리려면 subplots, distplot 메서드를 사용
#distplot 메서드 : 기본 틀을 만듬/ total_bill 메서드 : total_bill 열 데이터를 전달
        
ax = plt.subplots()
ax = sns.distplot(tips['total_bill'])
ax.set_title('TOtal Bill Histogram with Density Plot')

#밀집도(정규화시켜 넓이가 1이 되도록 그린 그래프)를 제외시키기
ax = plt.subplots()
ax = sns.distplot(tips['total_bill'], kde = False) #kkde = kernel density estimate.
ax.set_title('Total Bill Histogram')
ax.set_xlabel('Total_Bill')
ax.set_ylabel('Frequency')

#히스토그램(hist) 제외시키기
ax = plt.subplots()
ax = sns.distplot(tips['total_bill'], hist = False)
ax.set_title('Total Bill Histogram')
ax.set_xlabel('Total_Bill')
ax.set_ylabel('Frequency')

#rug 인자 추가 - 그래프의 축에 동일한 길이의 직선을 붙여 데이터으 밀집 정도를 표현한 그래프
hist_den_rug, ax = plt.subplots()
ax = sns.distplot(tips['total_bill'], rug = True)
ax.set_title('Total Bill Histogram Rug Plot')
ax.set_xlabel('Total_Bill')
ax.set_ylabel('Frequency')

#count 그래프 - 이산값을 나타낸 그래프
#요일별 팁 분포 그리기
ax = plt.subplots()
ax = sns.countplot('day', data = tips)
ax.set_title('Count of days')
ax.set_xlabel('Days of the Week')
ax.set_ylabel('Frequency')

#남녀별 팁 분포 그리기
ax = plt.subplots()
ax = sns.countplot('sex', data = tips)

    #다양한 종류의 이변량 그래프 그리기
    #1. seaborn라이브러리로 산점도 그래프 그리기
#regplot 메서드를 사용하면 산점도 그래프와 회구선을 그릴 수 있다.

ax = plt.subplots()
ax = sns.regplot(x = 'total_bill', y = 'tip', data = tips)
ax.set_title('Scatterplot of Total Bill and Tip')
ax.set_xlabel('Total Bill')
ax.set_ylabel('Tip')

#matplotlib에는 피겨(figure)와 액시즈(axes)라는 개념이 있다. 피겨는 그림을 가리키고, 액시즈는 그림에 포함된 하나의 그래프를 가리킨다.

#회귀선 없애기
ax = plt.subplots()
ax = sns.regplot(x = 'total_bill', y = 'tip', data = tips, fit_reg = False)
ax.set_title('Scatterplot of Total Bill and Tip')
ax.set_xlabel('Total Bill')
ax.set_ylabel('Tip')

#산점도 그래프의 크기와 모양 조절하기
scatter = sns.lmplot(x = 'total_bill', y = 'tip',
                    data = tips, fit_reg = False, hue = 'sex',
                    scatter_kws = {'s' : tips['size']*10})

#산점도, 관계 그래프에 색상추가
scatter = sns.lmplot(x = 'total_bill', y = 'tip', data = tips,
                    hue = 'sex', fit_reg = True)
plt.show()

    #2.그래프 합치기
joint = sns.jointplot(x = 'total_bill', y = 'tip', data = tips)
joint.set_axis_labels(xlabel = 'Total Bill', ylabel = 'Tip')
joint.fig.suptitle('Joint Plot', fontsize = 10, y = 1.04)

    #3.색으로 빈도수 표현하기
joint = sns.jointplot(x = 'total_bill', y = 'tip', data = tips, kind = 'hex')
joint.set_axis_labels(xlabel = 'Total Bill', ylabel = 'Tip')
joint.fig.suptitle('Joint Plot', fontsize = 10, y = 1.04)

    #4. 이차원 밀집도 그리기
kde, ax = plt.subplots()
ax = sns.kdeplot(data = tips['total_bill'],
                 data2 = tips['tip'],
                 shade = True)  #음영 넣기
ax.set_title('Kernel Density Plot of Total Bil and Tip')
ax.set_xlabel('Total Bill')
ax.set_ylabel('Tip')

    #5. 바 그래프 그리기(평균을 계산)
ax = plt.subplots()
ax = sns.barplot(x = 'time', y = 'total_bill', data = tips)
ax.set_title('Bar Plot')
ax.set_xlabel('Time of day')
ax.set_ylabel('Averge total bill')

#요일별 분포
#error bar : indication of the uncertainty around the estimate
ax = plt.subplots()
ax = sns.barplot(x = 'day', y = 'total_bill', data = tips)
ax.set_title('Bar Plot')
ax.set_xlabel('Time of day')
ax.set_ylabel('Averge total bill')

    #6.박스 그래프 그리기
ax = plt.subplots()
ax = sns.boxplot(x = 'time', y = 'total_bill', data = tips)
ax.set_title('Boxplot of total bill by time of day')
ax.set_xlabel('Time of day')
ax.set_ylabel('Total Bill')

#요일별 분포 그리기
ax = plt.subplots()
ax = sns.boxplot(x = 'day', y = 'total_bill', data = tips)
ax.set_title('Boxplot of total bill by time of day')
ax.set_xlabel('Time of day')
ax.set_ylabel('Total Bill')

#흡연자/비흡연자 분포 그리기
ax = plt.subplots()
ax = sns.boxplot(x = 'day' , y = 'total_bill', 
                 data = tips, hue = 'smoker' )
ax.set_title('Boxplot of total bill by time of day')
ax.set_xlabel('Time of day')
ax.set_ylabel('Total Bill')

    #7.Violin plot 그리기
ax = plt.subplots()
ax = sns.violinplot(x = 'time', y = 'total_bill', data = tips)
ax.set_title('Violin plot of total bill by time of day')
ax.set_xlabel('Time of day')
ax.set_ylabel('Total Bill')

#바이올린 그래프에 색상 추가하기
violin, ax = plt.subplots()
ax = sns.violinplot(x = 'time', y = 'total_bill', hue = 'sex', 
                    data = tips, split = True)
plt.show()

    #8. 관계 그래프 그리기(다차원 실수형 데이터) 
#각 데이터 열의 조합에 대해 스캐터 플롯을 그린다. 같은 데이터가 만나는 대각선 영역에는 해당 데이터의 히스토그램을 그린다.
fig = sns.pairplot(tips)

#색과 도형 바꾸기
fig = sns.pairplot(tips, hue = 'sex', markers=["o", "s"]) 

    # 데이터 연결하기
#1. concat 메서드로 데이터 연결하기
import pandas as pd
df1 = pd.read_csv('../data/concat_1.csv')
df2 = pd.read_csv('../data/concat_2.csv')
df3 = pd.read_csv('../data/concat_3.csv')
print(df1)
print(df2)
print(df3)

#concat 메서드는 전달받은 순서대로 데이터를 연결한다.
#3개의 파일의 인덱스가 일치하므로 같은 인덱스 밑에 연속적으로 붙는다.
row_concat = pd.concat([df1, df2, df3])
row_concat

print(row_concat.iloc[3, ])

#데이터프레임에 시리즈 연결하기
new_row_series = pd. Series(['n1','n2', 'n3', 'n4'])
new_row_series

#인덱스명이 일치하지 않으므로 옆에 붙지 않고 임의로 생성된 인덱스에 따로 붙으며 결측치가 생긴다.
pd.concat([df1, new_row_series])

#같은 인덱스를 붙여 데이터프레임 생성
new_row_df = pd.DataFrame([['n1', 'n2', 'n3', 'n4']],
                         columns = ['A', 'B', 'C', 'D'])
new_row_df

#concat메서드로 df1에 붙이기 - > 같은 인덱스에 맞춰서 붙는다.
pd.concat([df1, new_row_df])

#연결할 데이터 프레임 1개라면 append 메서드를 사용할 수 있다.
print(df1.append(new_row_df))  #행이 하나인 df
print(df1.append(df2))      #행이 여러개인 df

#딕셔너리 붙이기
data_dict = {'A': 'n1', 'B': 'n2', 'C': 'n3', 'D': 'n4'}
df1.append(data_dict, ignore_index = True)  #전의 인덱스 무시하고 새 인덱스 지정하기

#ignore_index인자 사용하기
row_concat_i = pd.concat([df1, df2, df3], ignore_index = True)
row_concat_i

#열방향으로 데이터 연결하기
col_concat = pd.concat([df1,df2,df3], axis = 1) #기본값은 0
col_concat

#열 이름으로 추출
col_concat['A']
col_concat['new_col_list'] = ['n1', 'n2', 'n3', 'n4']
col_concat
print(pd.concat([df1, df2,df3], axis = 1, ignore_index = True))


#공통 열과 공통 인덱스만 연결하기
df1.columns = ['A', 'B', 'C', 'D']
df2.columns = ['E', 'F', 'G', 'H']
df3.columns = ['A', 'C', 'F', 'H']
print(df1)
print(type(df1))

#데이터프레임에 없으면 빈칸 생성
row_concat = pd.concat([df1, df2,df3])
row_concat

#inner join : 공통의 열만 골라서 연결하기
print(pd.concat([df1, df2, df3], join = 'inner'))# 공통인자 없음
print(pd.concat([df1, df3], join = 'inner'))


#연습문제1.전체 승객를 나이별로 히스토그램으로 나타내세요. 

age1 = pd.to_numeric(titanic['age'])
age2 = age1.dropna(axis=0) #결측치 제거

titanic1 = plt.subplots()
titanic1 = sns.distplot(age2)


#2.남/여 승객수를 countplot으로 나타내세요
titanic1 = plt.subplots()
titanic1 = sns.countplot('sex', data = titanic)
titanic1.set_title('passenger by sex')
titanic1.set_ylabel('passenger')

#3.객실별 사망자 수를 출력해 보세요(countplot)
titanic1 = plt.subplots()
titanic1 = sns.countplot('class', data = titanic[titanic.survived == 0])
titanic1.set_title('death by class')
titanic1.set_xlabel('class')
titanic1.set_ylabel('death')


#4. 남/여 성별 사망자와 생존자를 나타내 보세요 (countplot)
titanic1 = plt.subplots()
titanic1 = sns.countplot(data = titanic, x = 'alive', hue = 'sex')
titanic1.set_title('dead or alive by sex')

#5. 아래와 같이 2개의 데이터 프레임을 만드세요
df1 = [{'name': 'John', 'job' : "teacher"},
       {'name' : 'Candy', 'job' : "student"},
       {'name' : 'Fred', 'job' : 'developer'}]

df2 = [{'name' : 'Ed', 'job' : 'engineer'},
      {'name' : 'Jack', 'job' : 'farmer'},
      {'name' : 'James', 'job' : 'student'}]

pd.DataFrame(df1)
df1
pd.DataFrame(df2)
df2

#6. 컬럼 이름을 'name', 'job'으로 주세요
from collections import OrderedDict
df1 = pd.DataFrame(OrderedDict([('name', ['John', 'Candy', 'Fred']), ('job', ['teacher', 'student', 'developer'])]))
df1
df2 = pd.DataFrame(OrderedDict([('name', ['Ed', 'Jack', 'James']), ('job', ['engineer', 'farmer', 'student'])]))
df2

df1 = df1[['name', 'job']]
df2 = df2[['name', 'job']]

#7. 만드신 2개의 데이터 프레이의 새로운 로우를 합치세요
row_concat= pd.concat([df1, df2])
row_concat

#8. 데이터프레임을 첫번째 데이터프레임의 새로운 컬럼(column)으로 합치세요.
columns_concat= pd.concat([df1, df2], axis = 1, ignore_index = True)
columns_concat

#matplotlib  한글 깨질때
from matplotlib import font_manager, rc
plt.rcParams['axes.unicode_minus'] = False

f_path = "C:/Windows/Fonts/malgun.ttf"
font_name = font_manager.FontProperties(fname = f_path).get_name()
rc('font', family = font_name)

#%%2019.07.26 Matplotlib on Jupyter Notebook

    #merge 메서드 사용하기 
#연결전용 메서드
import pandas as pd
person = pd.read_csv('../data/survey_person.csv') #관측한 사람
site = pd.read_csv('../data/survey_site.csv')  #관측 위치
survey = pd.read_csv('../data/survey_survey.csv') #관측 날짜
visited = pd.read_csv('../data/survey_visited.csv') #날씨 정보
print(person)
print(site)
print(survey)
print(visited)

visited_subset = visited.loc[[0, 2, 6], ]
print(visited_subset)
print(site)
#site 컬럼과 name컬럼 값이 같다는 것을 확인

#merge 기본적으로 내부 조인을 실행하며 메서드를 사용한 데이터 프레임(site)을 왼쪽으로 지정
#첫번째 인자값으로 지정한 데이터프레임(visited_subset)을 오른쪽으로 지정
#열이름 일치 =-왼쪽 프레임을 기준으로 연결
o2o_merge = site.merge(visited_subset, 
                       left_on = 'name', right_on = 'site')
print(o2o_merge)

m2o_merge = site.merge(visited, 
                      left_on = 'name', right_on = 'site')
print(site)
print(visited)

print(m2o_merge)

print(person)
print(survey)  #ident 칼럼 = person 칼럼

#공통의 칼럼을 기준으로 조인
ps = person.merge(survey, left_on = 'ident', right_on = 'person')
ps.head()

#공통의 칼럼을 기준으로 조인
vs = visited.merge(survey, left_on = 'ident', right_on = 'taken')
vs.head()

ps_vs = ps.merge(vs, left_on = ['ident', 'taken', 'quant', 'reading'],
                 right_on = ['person', 'ident', 'quant', 'reading'])
ps_vs

ps_vs = ps.merge(vs, on = ['reading', 'quant', 'taken', 'person'])
ps_vs


    #누락값 확인하기
#Nan, nan, NAN 등으로 표기된다.
#Numpy는 수학이나 과학 연산을 위해 만든 파이썬 라이브러리
#누락값을 사용하기 위해 Numpy에서 누락값을 불러온다.
from numpy import NaN, NAN, nan

#누락값은 0도 공백도 아님.
print(NaN == 0)
print(NaN == '')

#비교할 자체가 없으니 모두 False를 출력한다.
import pandas as pd
print(pd.isnull(NaN))

#널값은 True를 출력한다.
print(pd.isnull(nan))
print(pd.notnull(NaN))

print(pd.notnull(42))
print(pd.notnull('missing'))

#판다스에는 누락값을 확인하는 isnull, 누락값이 아닌 경우 notnull 메서드를 사용한다.


    #누락값이 생기는 이유
    #1. 누락값이 있는 데이터 집합을 연갈할 때
survey = pd.read_csv('../data/survey_survey.csv') 
visited = pd.read_csv('../data/survey_visited.csv') 
print(visited) #5열에 널값
print(survey) #8, 9열에 널값

#두개의 테이블을 합치면서 널값이 늘어난다.
vs = visited.merge(survey, left_on = 'ident', right_on = 'taken')
print(vs)

    #2. 데이터를 입력할 때 누락값이 생기는 경우
num_legs = pd.Series({'goat' : 4, 'amoeba' : nan})
print(num_legs)

    #3. 범위를 지정하여 데이터를 추출할 때 누락값이 생기는 경우
gapminder = pd.read_csv('../data/gapminder.tsv', sep = '\t')
life_exp = gapminder.groupby(['year'])['lifeExp'].mean()
life_exp

#데이터 프레임에 존재하지 않는 범위를 추출하면 누락값을 출력한다.
print(life_exp.loc[range(2000, 2010)])

#불린 추출
y2000 = life_exp.index > 2000
print(y2000)

#값이 있는 행만 가져온다.
y2000 = life_exp[life_exp.index > 2000]
print(y2000)

#누락값의 개수 구하기
ebola = pd.read_csv('../data/country_timeseries.csv')
ebola

#결측치 제외한 값 출력
print(ebola.count())

#누락값 갯수 출력
print(ebola.shape)  #행, 열 정보 확인
num_rows = ebola.shape[0] #행 갯수 122개 (열갯수는 shape[1])
num_missing = num_rows - ebola.count() #누락값 = 행 갯수 - 값 갯수
print(num_missing)

#전체 널값의 갯수
import numpy as np
print(np.count_nonzero(ebola.isnull()))

#기니의 널값 갯수
print(np.count_nonzero(ebola['Cases_Guinea'].isnull()))

#value_counts 지정한 열의 빈도를 구하는 메서드
print(ebola.Cases_Guinea.value_counts(dropna = False).head())

    #누락값 처리하기 - 변경, 삭제
    #1. 누락값 변경하기
print(ebola.fillna(0).iloc[0:10, 0:5])  #누락값에 0 대입, 범위 : 10행, 5열까지

#앞 행의 값을 그대로 가져와 대입(앞의 값이 널인 경우에도 그대로 복사)
print(ebola.fillna(method = 'ffill').iloc[0:10, 0:5]) 

#뒷 행의 값을 가져와 대입
print(ebola.fillna(method = 'bfill').iloc[0:10, 0:5]) 

#앞과 뒷행의 평균값으로 대입
ebola.interpolate().iloc[0:10, 0:5]

#dropna 누락값 삭제 메서드
print(ebola.shape) 

ebola_dropna = ebola.dropna()
print(ebola_dropna.shape)
print(ebola_dropna)

#누락값이 포함된 데이터 계산하기
ebola['Cases_multiple'] = ebola['Cases_Guinea'] + ebola['Cases_Liberia'] + ebola['Cases_SierraLeone']
ebola['Cases_multiple']

#누락값이 하나라도 있으면 결과값도 누락값이 된다.
ebola_subset = ebola.loc[:, ['Cases_Guinea', 'Cases_Liberia','Cases_SierraLeone']]
ebola_subset.head(n = 10)

#누락값을 무시한 채 계산 -> skipna = True
ebola.Cases_Guinea.sum(skipna = True)

#누락값을 포함한 채 계산하면 누락값을 출력한다.
print(ebola.Cases_Guinea.sum(skipna = False))

#Cases multiple에서 누락값 제외한 값만 출력해 보세요
ebola["Cases_multiple"] = ebola["Cases_Guinea"].fillna(0)\
                                 + ebola["Cases_Liberia"].fillna(0)\
                                 + ebola["Cases_SierraLeone"].fillna(0)
ebola.head(10)

#글로브 사용하기
import glob
nyc_taxi_data = glob.glob('../data/fhv_*') #'fhv_'로 시작하는 모든 파일 동시에 열기
nyc_taxi_data

taxi1 = pd.read_csv(nyc_taxi_data[0])
taxi2 = pd.read_csv(nyc_taxi_data[1])
taxi3 = pd.read_csv(nyc_taxi_data[2])
taxi4 = pd.read_csv(nyc_taxi_data[3])
taxi5 = pd.read_csv(nyc_taxi_data[4])

#5개의 테이블 합치기
taxi = pd.concat([taxi1, taxi2, taxi3, taxi4, taxi5])
print(taxi.shape)

#for문을 사용하여 concat와 동일한 결과를 출력할 수 있다.
list_taxi_df = []
for csv_filename in nyc_taxi_data:
    #print(csv_filename)
    df = pd.read_csv(csv_filename)
    list_taxi_df.append(df)
print(len(list_taxi_df))

print(list_taxi_df[0].head())
taxi_loop_concat = pd.concat(list_taxi_df)
print(taxi_loop_concat.shape)

##연습문제1. 2010 - 17까지 출생한 전체 남/녀 수의 합을 구하세요
import glob
nat = glob.glob('../data/names/yob*') #데이터 불러오기
nat

nat10 = pd.read_csv(nat[130], names = ['name', 'sex', 'count'])
nat11 = pd.read_csv(nat[131], names = ['name', 'sex', 'count'])
nat12 = pd.read_csv(nat[132], names = ['name', 'sex', 'count'])
nat13 = pd.read_csv(nat[133], names = ['name', 'sex', 'count'])
nat14 = pd.read_csv(nat[134], names = ['name', 'sex', 'count'])
nat15 = pd.read_csv(nat[135], names = ['name', 'sex', 'count'])
nat16 = pd.read_csv(nat[136], names = ['name', 'sex', 'count'])
nat17 = pd.read_csv(nat[137], names = ['name', 'sex', 'count'])
#년도 컬럼 추가
nat10['year']= 2010
nat11['year']= 2011
nat12['year']= 2012
nat13['year']= 2013
nat14['year']= 2014
nat15['year']= 2015
nat16['year']= 2016
nat17['year']= 2017

#1. Correction

years = range(2010, 2018)
for yy in years : 
    file = '../data/names/yob%d.txt' %yy
    df = pd.read_csv(file, names = columns)
    df['year'] = yy
    baby.append(df)

#출생의 총합 구하기
birth = pd.concat([nat10, nat11, nat12, nat13, nat14, nat15, nat16,nat17])
sum(birth['count'])

#남녀별로 따로 구하기
birth.groupby(["sex"])["count"].sum()

import seaborn as sns
import glob
import matplotlib.pyplot as plt
import pandas as pd
%matplotlib inline
axe1 = plt.subplots()
axe1 = sns.countplot('sex', data = birth)
axe1.set_title("2010 - 2017 birth by sex ")


#2. 년도별 남/여 출생 추이 그래프를 그리세요
axe2 = plt.subplots()
axe2 = sns.barplot(x = 'year', y = 'count', hue = 'sex', data = birth)

#3. 성별에 따른 빈도수가 가장 높은 이름 10개만 출력해 보세요
y = birth.groupby(["sex", "name"])
y

#3. Correction
sorted_name = names.groupby(["gender", "name"], as_index = False)["count"].sum().sort_values(["count"], ascending = False)
print(sorted_name[sorted_name["gender"] == "F"].head(10))
print(sorted_name[sorted_name["gender"] == "M"].head(10))



#%% 2019.07.29 파이썬으로 데이터 주무르기 1장

#서울시 구별 CCTV 현황 분석하기
import pandas as pd
CCTV_Seoul = pd.read_csv('../data/data/01. CCTV_in_Seoul.csv', encoding = 'utf-8')
CCTV_Seoul.head()

#컬럼보기
CCTV_Seoul.columns

#첫번째 컬럼만 보기
CCTV_Seoul.columns[0]

#컬럼명 바꾸기
#inplace = True :  수정후 데이터프레임으로 기존 데이터프레임을 대체
CCTV_Seoul.rename(columns = {CCTV_Seoul.columns[0] : '구별'}, inplace = True) 
CCTV_Seoul.head()

pop_Seoul = pd.read_excel('../data/data/01. population_in_Seoul.xls', 
                          header = 2,              # 첫 두행은 건너뛰기
                          parse_cols = 'B,D,G,J,N', #'B,D,G,J,N'만 가져오기
                          encoding = 'utf-8')
pop_Seoul.head()

#컬럼이름 재설정
pop_Seoul.rename(columns = {pop_Seoul.columns[0] : '구별',
                             pop_Seoul.columns[1] : '인구수',
                             pop_Seoul.columns[2] : '한국인',
                             pop_Seoul.columns[3] : '외국인',
                             pop_Seoul.columns[4] : '고령자'},
                             inplace = True)
pop_Seoul.head()

import pandas as pd
import numpy as np

#시리즈 만들기
s = pd.Series([1,3,5,np.nan,6,8])
s

#날짜범위 설정
dates = pd.date_range('20130101', periods = 6)
dates

#랜덤변수 6행 4열의 데이터프레임 만들기
df = pd.DataFrame(np.random.randn(6, 4), index = dates,
                 columns = ['A', 'B', 'C', 'D'])
df.head()

#데이터프레임 정보 확인
df.index
df.columns
df.values
df.info()
df.describe()

#B 컬럼 기준으로 내림차순 정렬
df.sort_values(by = 'B', ascending = False)

#데이터추출
df['A']
df[0:3]
df['20130102' : '20130104']
df.loc[dates[0]]
df.loc[:, ['A', 'B']]
df.loc['20130102' : '20130104', ['A', 'B']]
df.loc['20130102', ['A', 'B']]
df.loc[dates[0], 'A']
df.iloc[3]
df.iloc[3:5, 0:2]
df.iloc[[1,2,4], [0,2]]
df.iloc[1:3, :]
df.iloc[:, 1:3]
df[df.A > 0]

#데이터프레임 복사
df2 = df.copy()
df2

#E열 추가
df2['E'] = ['one', 'one', 'two', 'three', 'four', 'three']
df2

#'two', 'four'가 있는 열 찾기
df2['E'].isin(['two', 'four'])

#'two', 'four'가 있는 열만 추출
df2[df2['E'].isin(['two', 'four'])]

#누적합계
df.apply(np.cumsum)

CCTV_Seoul['최근증가율'] = (CCTV_Seoul['2016년'] + CCTV_Seoul['2015년']+ CCTV_Seoul['2014년'] )/CCTV_Seoul['2013년도 이전'] * 100
CCTV_Seoul.sort_values(by = '최근증가율', ascending = False).head()
#도봉구의 CCTV 급증 -> 현상에 대한 원인?

#서울시 인구 데이터 파악하기
pop_Seoul

#필요없는 서울시 전체 합계 행 삭제
pop_Seoul.drop([0], inplace = True) #inplace = True : 삭제한 데이터프레임 그대로 적용
pop_Seoul

#서로 다른 컬럼 가져오기
pop_Seoul['구별'].unique()

#nan 행 찾기
pop_Seoul[pop_Seoul['구별'].isnull()]

#nan 행 삭제
pop_Seoul.drop([26], inplace = True)

pop_Seoul['외국인비율'] = \
pop_Seoul['외국인']/ pop_Seoul['인구수'] * 100

pop_Seoul['고령자비율'] = \
pop_Seoul['고령자']/ pop_Seoul['인구수'] * 100

pop_Seoul.head()

pop_Seoul.sort_values(by = '인구수', ascending = False).head()

pop_Seoul.sort_values(by = '외국인비율', ascending = False).head()

pop_Seoul.sort_values(by = '고령자비율', ascending = False).head()

#CCTV 데이터와 인구 데이터 합치고 분석하기
data_result = pd.merge(CCTV_Seoul, pop_Seoul, on = '구별')
data_result.head()

#행방향 삭제 drop/열방향 del
del data_result['2013년도 이전'] 
del data_result['2014년']
del data_result['2015년']
del data_result['2016년']
data_result.head()

#구별 칼럼을 인덱스로 설정
data_result.set_index('구별', inplace = True)
data_result.head()

#np.corrcoef : 넘파이의 두 변수 사이의 상관관계 조사 함수
#0.1이하  상관관계가 없음 / 0.3 약한 상관관계/ 0.7 강한 상관관계
np.corrcoef(data_result['고령자비율'], data_result['소계'])

np.corrcoef(data_result['외국인비율'], data_result['소계'])

np.corrcoef(data_result['인구수'], data_result['소계'])  #약한 상관관계

data_result.sort_values(by = '소계', ascending = False).head()

data_result.sort_values(by = '인구수', ascending = False).head()

#한글 깨짐 방지
import platform

from matplotlib import font_manager, rc
plt.rcParams['axes.unicode_minus'] = False


if platform.system() =='Darwin':
    rc('font', family = 'AppleGothic')
elif platform.system() == 'Windows':
    path = "c:/Windows/Fonts/malgun.ttf"
    font_name = font_manager.FontProperties(fname = path).\
    get_name()
    rc('font', family = font_name)
else : 
    print('Unknown system')
    
data_result.head()

#바그래프로 그리기
plt.figure()
data_result['소계'].plot(kind = 'barh', grid = True, figsize = (10,10))

#내림차순 정렬
data_result['소계'].sort_values().plot(kind = 'barh', grid = True, figsize = (10,10))
plt.show()

data_result['CCTV비율'] = data_result['소계']/data_result['인구수'] * 100
data_result['CCTV비율'].sort_values().plot(kind = 'barh', grid = True, figsize = (10, 10)) 

#산점도 그리기
plt.figure(figsize = (6,6))
plt.scatter(data_result['인구수'], \
           data_result['소계'], s = 50)
plt.xlabel('인구수')
plt.ylabel('CCTV')
plt.grid()
plt.show() 

#1차 방정식 그래프 그리기
#polyfit : 절편, 기울기를 구하는 넘파이 함수
fp1 = np.polyfit(data_result['인구수'], data_result['소계'], 1)
fp1 

f1 = np.poly1d(fp1) #y축
fx = np.linspace(100000, 700000, 100) #x축의 범위/ 100간격으로

plt.figure(figsize = (10, 10))
plt.scatter(data_result['인구수'], data_result['소계'], s = 50)
plt.plot(fx, f1(fx), ls = 'dashed', lw = 3, color = 'g')
plt.xlabel('인구수')
plt.ylabel('CCTV')
plt.grid()
plt.show()

fp1 = np.polyfit(data_result['인구수'], data_result['소계'], 1)
f1 = np.poly1d(fp1)
fx = np.linspace(100000, 700000, 100)

#np.poly1d() = 다항식 연산이 가능한 numpy의 클래스
#np.abs() = 절대값을 구하는 넘파이 함수
data_result['오차'] = np.abs(data_result['소계'] - f1(data_result['인구수']))

df_sort = data_result.sort_values(by= '오차', ascending = False)
df_sort.head()

plt.figure(figsize = (14, 10))
plt.scatter(data_result['인구수'], data_result['소계'],
           c = data_result['오차'], s =50)  #오차에 color 입히고, 50사이즈
plt.plot(fx, f1(fx), ls = 'dashed', lw = 3, color = 'g')

#직선을 기준으로 해서 오차 범위가 큰 10개 구만 텍스트 찍기
for n in range(10) :  
    plt.text(df_sort['인구수'][n]*1.02,  #x축은 약간 오른쪽으로 이동
             df_sort['소계'][n]*0.98,    #y축은 약간 아래로 이동
             df_sort.index[n], fontsize = 15)

plt.xlabel('인구수')
plt.ylabel('인구당비율')
plt.colorbar()
plt.grid()


#2장 강남 3구는 안전한가?
crime_anal_police = pd.read_csv('../data/data/02. crime_in_Seoul.csv', thousands = ',', encoding = 'euc-kr')
crime_anal_police.head()

#구글맵스를 사용해서 경찰서의 위치 정보를 받아온다.
#구글맵스 설치 : Anaconda prompt > pip googlemap install
import googlemaps
gmaps_key ="AIzaSyD548iSahGuxgvGqfg8P0ytIVF6ksn4NMw"
gmaps = googlemaps.Client(key = gmaps_key)

gmaps.geocode('서울중부경찰서', language = 'ko')

#구글맵에 검색할 수 있게 관서명을 풀네임으로 바꿔준다
station_name = []
for name in crime_anal_police['관서명']:
    station_name.append('서울' + str(name[:-1]) + '경찰서')
    
station_name

#for문을 이용해서 필요한 정보만 가져와 리스트에 추가한다.
station_addresses = []
station_lat = []
station_lng = []

for name in station_name : 
    tmp = gmaps.geocode(name, language = 'ko')
    station_addresses.append(tmp[0].get("formatted_address"))
    
    tmp_loc = tmp[0].get("geometry")
    station_lat.append(tmp_loc['location']['lat'])
    station_lng.append(tmp_loc['location']['lng'])
    print(name + '-->' + tmp[0].get("formatted_address"))

#tmp는 하나의 딕셔너리가 포함된 리스트로 구글맵에서 추출한 정보를 담고 있다
#http://jsonviewer.stack.hu/ 에서 복붙해서 구조도 참고
tmp

#Folium을 이용해서 지도 그리기(크롬을 기본 브라우저로 설정)
#Anaconda prompt > pip install folium
import folium

map_osm = folium.Map(location = [45.5236, -122.6750])
map_osm.save('c:/maps.html')
map_osm

#옵션 바꾸기
map_osm = folium.Map(location = [45.5236, -122.6750],
                    zoom_start = 13)
map_osm

Stamen = folium.Map(location = [45.5236, -122.6750],
                     tiles = 'Stamen Toner',
                    zoom_start = 13)
Stamen 

#옵션 추가 : tile, zoom, 팝업메세지
map_1 = folium.Map(location = [45.372, -121.6972],
                     tiles = 'Stamen Terrain',
                    zoom_start = 12)
folium.Marker([45.3288, -121.6625], popup = 'Mt. Hood Meadows',
             icon = folium.Icon(icon = 'cloud')).add_to(map_1)
folium.Marker([45.3311, -121.7113], popup = 'Timberline Lodge',
             icon = folium.Icon(icon = 'cloud')).add_to(map_1)
map_1

#옵션 추가 :  팝업메세지의 아이콘과 색 바꾸기
map_1 = folium.Map(location = [45.372, -121.6972],
                     tiles = 'Stamen Terrain',
                    zoom_start = 12)
folium.Marker([45.3288, -121.6625], popup = 'Mt. Hood Meadows',
             icon = folium.Icon(icon = 'cloud')).add_to(map_1)
folium.Marker([45.3311, -121.7113], popup = 'Timberline Lodge',
             icon = folium.Icon(color = 'green')).add_to(map_1)
folium.Marker([45.3311, -121.6823], popup = 'Some Other Location',
             icon = folium.Icon(color = 'red')).add_to(map_1)
map_1

#반경설정
map_2 = folium.Map(location = [45.5236, -121.6750],
                     tiles = 'Stamen Toner',
                    zoom_start = 13)
folium.Marker([45.5244, -122.6699], popup = 'The Waterfront').add_to(map_2)

folium.CircleMarker([45.5244, -122.6261], radius = 50,
                   popup = 'Laurelhurst Park', color = '#3186cc',
                   fill_color = '#3186cc').add_to(map_2)
map_2

#%%2019.07.30 파이썬으로 데이터 주무르기 2장

#for문을 이용해서 주소를 공백단위로 자르고 
#구정보만 가져와서 gu_name 리스트에 추가
#crime_anal_police 프레임에 컬럼 추가
gu_name = []

for name in station_addresses:
    tmp = name.split()   
    tmp_gu = [gu for gu in tmp if gu[-1] == '구'][0] #[0]을 붙여서 괄호를 제외한 값만 가져온다
    gu_name.append(tmp_gu)
    
crime_anal_police['구별'] = gu_name  #완성된 시리즈를 데이터프레임에 추가
crime_anal_police.head()

#csv로 저장
crime_anal_police.to_csv('../data/02. crime_in_Seoul_include_gu_name.csv', sep = ',', encoding = 'utf-8')

#다시 불러오기
crime_anal_raw = pd.read_csv('../data/02. crime_in_Seoul_include_gu_name.csv', encoding = 'utf-8')
crime_anal_raw.head()

#테이블 내의 특정한 열을 행 인덱스로 지정하고 싶으면 index_col 인수를 사용한다.
crime_anal_raw = pd.read_csv('../data/02. crime_in_Seoul_include_gu_name.csv', 
                             encoding = 'utf-8', index_col = 0) #0행을 행의 인덱스로 지정
crime_anal_raw.head()

#0행과 2행에 있는 중구에 있는 두 경찰서의 데이터를 합해준다.
crime_anal = pd.pivot_table(crime_anal_raw, index = '구별',
                           aggfunc = np.sum)
crime_anal

#검거율 구하기
crime_anal['강간검거율'] = crime_anal['강간 검거'] / crime_anal['강간 발생'] * 100
crime_anal['강도검거율'] = crime_anal['강도 검거'] / crime_anal['강도 발생'] * 100
crime_anal['살인검거율'] = crime_anal['살인 검거'] / crime_anal['살인 발생'] * 100
crime_anal['절도검거율'] = crime_anal['절도 검거'] / crime_anal['절도 발생'] * 100
crime_anal['폭력검거율'] = crime_anal['폭력 검거'] / crime_anal['폭력 발생'] * 100

del crime_anal['강간 검거']
del crime_anal['강도 검거']
del crime_anal['살인 검거']
del crime_anal['절도 검거']
del crime_anal['폭력 검거']

crime_anal
#검거율이 100프로가 넘는 경우를 볼 수 있다.(도봉구, 금천구, 강북구, 양천구 등)

#for 문을 이용하여 검거율이 100프로가 초과하는 데이터 수정하기
con_list = ['강간검거율', '강도검거율', '살인검거율', '절도검거율', '폭력검거율']

for column in con_list :
    crime_anal.loc[crime_anal[column] > 100, column] = 100
    
crime_anal.head()

#너무 긴 컬럼명 정리하기
crime_anal.rename(columns = {'강간 발생' : '강간',
                            '강도 발생' : '강도',
                            '살인 발생' : '살인',
                            '절도 발생' : '절도',
                            '폭력 발생' : '폭력'}, inplace = True)
crime_anal

#sklearn으로 각 범죄 건수를 0과 1사이 값으로 정규화하기
from sklearn import preprocessing

col = ['강간', '강도', '살인', '절도', '폭력']

x = crime_anal[col].values
min_max_scaler = preprocessing.MinMaxScaler()

x_scaled = min_max_scaler.fit_transform(x.astype(float))
crime_anal_norm = pd.DataFrame(x_scaled, columns = col, 
                              index = crime_anal.index)

col2 = ['강간검거율', '강도검거율', '살인검거율', '절도검거율', '폭력검거율']
crime_anal_norm[col2] = crime_anal[col2]
crime_anal_norm

#정규화 연습 : 가장 큰 값을 1, 가장 작은 값을 0으로 변환, 그 사이에 다른 값들이 분포한다.
from sklearn import preprocessing
test = [[10], [9], [9], [8], [6], [2]]

scaler = preprocessing.MinMaxScaler()
test = scaler.fit_transform(test)
print(test)

#CCTV 데이터와 연결하기 : CCTV가 많으면 범죄가 적어질까?
result_CCTV = pd.read_csv('../data/data/01. CCTV_result.csv', 
                         encoding = 'UTF-8',
                         index_col = '구별')

#새로운 컬럼을 만들어서 인구수, CCTV의 컬럼 붙여넣기
crime_anal_norm[['인구수', 'CCTV']] = result_CCTV[['인구수', '소계']]
crime_anal_norm.head()

#5개 범죄를 합친 범죄 컬럼 추가하기
col = ['강간', '강도', '살인', '절도', '폭력']
crime_anal_norm['범죄'] = np.sum(crime_anal_norm[col], axis = 1)
crime_anal_norm.head()

#검거 컬럼 추가하기
col = ['강간검거율', '강도검거율', '살인검거율', '절도검거율', '폭력검거율']
crime_anal_norm['검거'] = np.sum(crime_anal_norm[col], axis = 1)
crime_anal_norm.head()

#범죄, 검거 내림차순 정렬
y = crime_anal_norm.sort_values(['범죄','검거'], ascending = False)
y

#seaborn으로 시각화하기
import seaborn as sns
tips = sns.load_dataset("tips")

sns.set_style("darkgrid")
sns.lmplot(x = 'total_bill', y = 'tip', data = tips, size = 7)
plt.show()

sns.lmplot(x = "total_bill", y = "tip", hue = "smoker", data = tips, palette = "Set1", size = 7)
plt.show()

#'강도', '살인', '폭력' 상관관계 그리기
sns.pairplot(crime_anal_norm, vars = ['강도', '살인', '폭력'],
            kind = 'reg', size = 3)
plt.show()
#세 범죄 사이에 양의 상관관계가 있다.

#CCTV대수와 살인 강도와의 상관관계
sns.pairplot(crime_anal_norm, x_vars = ['인구수', 'CCTV'],
            y_vars = ['살인','강도'], kind = 'reg', size = 4)
plt.show()
#CCTV가 많은 쪽에서 살인 강도가 덜 일어난다(2000대 기준으로 안쪽에서 많이 발생)

#검거율과의 상관관계
sns.pairplot(crime_anal_norm, x_vars = ['인구수', 'CCTV'],
            y_vars = ['살인검거율', '폭력검거율'],
            kind = 'reg', size = 4)
plt.show()
#CCTV대수가 많아진다고 해서 검거율이 올라가진 않는다.

#검거율과의 상관관계
sns.pairplot(crime_anal_norm, x_vars = ['인구수', 'CCTV'],
            y_vars = ['절도검거율', '강도검거율'],
            kind = 'reg', size = 4)
plt.show()

#최대검거율로 검거율을 나누고 검거율 내림차순 정렬
tmp_max = crime_anal_norm['검거'].max()
crime_anal_norm['검거'] = crime_anal_norm['검거'] /tmp_max *100
crime_anal_norm_sort = crime_anal_norm.sort_values(by = '검거', ascending = False)

crime_anal_norm_sort.head()

crime_anal_norm['검거'] = crime_anal_norm['검거'] /tmp_max
crime_anal_norm['검거']

#검거율 히트맵 그리기
target_col = ['강간검거율', '강도검거율', '살인검거율', '절도검거율', '폭력검거율']
crime_anal_norm_sort = crime_anal_norm.sort_values(by = '검거', ascending = False)

plt.figure(figsize = (10,10))
sns.heatmap(crime_anal_norm_sort[target_col], annot = True, fmt = 'f',
           linewidths = 5, cmap = 'RdPu')
plt.title('범죄 검거 비율(정규화된 검거의 합으로 정렬)')
plt.show()

#범죄율 히트맵 그리기
target_col = ['강간', '강도', '살인', '절도', '폭력', '범죄']
crime_anal_norm['범죄'] = crime_anal_norm['범죄']/5
crime_anal_norm_sort = crime_anal_norm.sort_values(by = '범죄', ascending = False)

plt.figure(figsize = (10,10))
sns.heatmap(crime_anal_norm_sort[target_col], annot = True, fmt = 'f',
           linewidths = 5, cmap = "YlGnBu")
plt.title('범죄비율 (정규화된 발생 건수로 정렬)')
plt.show()

crime_anal_norm.to_csv('../data/02. crime_in_Seoul_final1.csv', sep = ',', encoding = 'utf-8')

#Folium을 이용해서 지도 그리기(크롬을 기본 브라우저로 설정)
#Anaconda prompt > pip install folium
import folium

#통계청 기반의 지리데이터를 받을 수 있다.
https://github.com/southkorea

#범죄율에 대한 지도 시각화
import json
geo_path = '../data/data/02. skorea_municipalities_geo_simple.json'
geo_str = json.load(open(geo_path, encoding = 'utf-8'))

#구별 살인율 시각화 지도
map = folium.Map(location = [37.5502, 126.982], zoom_start = 11,
                tiles = 'Stamen Toner')

map.choropleth(geo_data = geo_str,
              data = crime_anal_norm['살인'],
              columns = [crime_anal_norm.index,
                        crime_anal_norm['살인']],
              fill_color = 'PuRd',
              key_on = 'feature.id')
map

#구별 범죄율 시각화
map2 = folium.Map(location = [37.5502, 126.982], zoom_start = 11,
                tiles = 'Stamen Toner')

map2.choropleth(geo_data = geo_str,
              data = crime_anal_norm['범죄'],
              columns = [crime_anal_norm.index,
                        crime_anal_norm['범죄']],
              fill_color = 'YlGnBu',
              key_on = 'feature.id')
map2

#인구수 대비 살인사건 시각화
tmp_criminal = crime_anal_norm['살인'] /crime_anal_norm['인구수']

map3 = folium.Map(location = [37.5502, 126.982], zoom_start = 11,
                tiles = 'Stamen Toner')

map3.choropleth(geo_data = geo_str,
              data = tmp_criminal,
              columns = [crime_anal_norm.index,
                        tmp_criminal],
              fill_color = 'YlGnBu',
              key_on = 'feature.id')
map3

#인구수 대비 범죄율 시각화
tmp_criminal = crime_anal_norm['범죄'] /crime_anal_norm['인구수']

map4 = folium.Map(location = [37.5502, 126.982], zoom_start = 11,
                tiles = 'Stamen Toner')

map4.choropleth(geo_data = geo_str,
              data = tmp_criminal,
              columns = [crime_anal_norm.index,
                        tmp_criminal],
              fill_color = 'YlGnBu',
              key_on = 'feature.id')

map4

#경찰서별 검거현황과 구별 범죄발생 현황 표현하기

crime_anal_raw['lat'] = station_lat #경찰서 위경도 정보 컬럼 추가
crime_anal_raw['lng'] = station_lng

col= ['살인 검거', '강도 검거', '강간 검거', '절도 검거', '폭력 검거']
tmp = crime_anal_raw[col] /crime_anal_raw[col].max()

crime_anal_raw['검거'] = np.sum(tmp, axis = 1)
crime_anal_raw.head()

#경찰서 위치 시각화
map = folium.Map(location = [37.5502, 126.982], zoom_start = 11)

for n in crime_anal_raw.index : 
    folium.Marker([crime_anal_raw['lat'][n],
                  crime_anal_raw['lng'][n]]).add_to(map)
map    

#경찰서별 검거율에 따른 원 그리기
map = folium.Map(location = [37.5502, 126.982], zoom_start = 11)

for n in crime_anal_raw.index : 
    folium.CircleMarker([crime_anal_raw['lat'][n],
                  crime_anal_raw['lng'][n]],
                 radius = crime_anal_raw['검거'][n]*10,
                 color = '#3186cc', fill_color = '#3186cc',
                 fill = True).add_to(map)
map

#1. 경찰서 이름, 검거율 등의 정보 추가
#2. 아이콘 추가
map = folium.Map(location = [37.5502, 126.982], zoom_start = 11)
map.choropleth(geo_data = geo_str,
              data = crime_anal_norm['범죄'],
              columns = [crime_anal_norm.index,
                       crime_anal_norm['범죄']],
              fill_color = 'YlGnBu',
              key_on = 'feature.id')

for n in crime_anal_raw.index : 
    folium.CircleMarker([crime_anal_raw['lat'][n],
                  crime_anal_raw['lng'][n]],
                 radius = crime_anal_raw['검거'][n]*10,
                 color = '#3186cc', fill_color = '#3186cc',
                 fill = True).add_to(map)



    #경찰서 이름, 검거율 추가
for n in crime_anal_raw.index : 
    folium.Marker([crime_anal_raw['lat'][n],
                  crime_anal_raw['lng'][n]], popup = [crime_anal_raw['관서명'][n],crime_anal_raw['검거'][n]]).add_to(map)

map

#두 지도 합치기
map = folium.Map(location = [37.5502, 126.982], zoom_start = 11)
map.choropleth(geo_data = geo_str,
              data = crime_anal_norm['범죄'],
              columns = [crime_anal_norm.index,
                       crime_anal_norm['범죄']],
              fill_color = 'YlGnBu',
              key_on = 'feature.id')

for n in crime_anal_raw.index : 
    folium.CircleMarker([crime_anal_raw['lat'][n],
                  crime_anal_raw['lng'][n]],
                 radius = crime_anal_raw['검거'][n]*10,
                 color = '#3186cc', fill_color = '#3186cc',
                 fill = True).add_to(map)
    
    #경찰서 이름, 검거율 추가
for n in crime_anal_raw.index : 
    folium.Marker([crime_anal_raw['lat'][n],
                  crime_anal_raw['lng'][n]], popup = [crime_anal_raw['관서명'][n],('검거: %f')%crime_anal_raw['검거'][n]],
                 icon = folium.Icon(icon = 'cloud')).add_to(map)

map

#구별 범죄율 시각화
crime1 = []
for i in range(0, len(crime_anal_norm.index),1) : 
    crime1.append([crime_anal_norm.index[i] + '\n' + '검거율 :' + str(round(crime_anal_norm['검거'][i]))])
crime1

#각 구별 위치정보 가져오기
gu_geo = []
for gu in crime_anal_norm.index : 
    tmp = gmaps.geocode(gu, language = 'ko')
    gu_geo.append(tmp[0].get("formatted_address"))
    tmp_loc = tmp[0].get("geometry")
    station_lat.append(tmp_loc['location']['lat'])
    station_lng.append(tmp_loc['location']['lng'])
    print(gu + '-->' + tmp[0].get("formatted_address"))
    
    
#연습문제
credit = pd.read_csv('../data/credit_card_data.csv', sep = ',')
#1. 연령대별 월 카드 이용 총 금액

total = credit.groupby('ages')['monthly_card_spend'].sum()
total   

#2. 지역별 월 카드 이용 총 금액
total1 = credit.groupby('city')['monthly_card_spend'].sum()
total1

credit.columns

#20대 데이터만 가져오기
credit_20 = credit[credit.ages == '20대']
credit_20

 #합산할 대출 관련 컬럼 리스트 만들기
loan = []
for i in credit_20.columns : 
    if 'loan' in i :
        loan.append(i)
    else : 
        pass
loan

#20대 대출 총합
credit_20[loan].sum()

#20대 모든 대출 컬럼 총합
credit_20[loan].sum().sum()

#4. 20대의 월 카드 이용 금액을 그래프로 나타내 보세요
ax = plt.subplots()
ax = sns.barplot(x = 'month', y = 'monthly_card_spend', data =  credit_20, hue = 'sex')

#선그래프로 나타내기
ax = plt.subplots()
ax = sns.lineplot(x = 'month', y = 'monthly_card_spend', data =  credit_20, hue = 'sex')

#%% 2019.07.31 파이썬으로 데이터 주무르기 3장

#beautifulSoup은 html 코드를 파이썬이 이해하는 객체 구조로 변환하는 파싱을 맡고 있다.
#이 라이브러리를 이용해서 의미있는 정보를 추출해 낼 수 있다.
#HTML Parser가 파이썬 기본 모듈로 제공된다 - HTMLParser 입력만으로 사용
#HTML : HyperText Markup Language 라는 의미의 웹 페이지를 위한 마크업 언어다.

from bs4 import BeautifulSoup

#HTML 파일 불러오기
page = open('../data/data/03. test_first.html', 'r').read()
soup = BeautifulSoup(page, 'html.parser')
print(soup.prettify())
#HTML 페이지의 내용을 전체 다 보려면 prettify() 옵션을 사용한다.

#자식요소를 리스트 형태로 반환
list(soup.children)

html = list(soup.children)[2] #html 태그에 접속
html

list(html.children) #리스트 형태로 가져오기

#html의 children 중 3번을 조사하면 body 태그가 나옴
body = list(html.children)[3]
body

#body만 보는 방법2
soup.body

list(body.children)

#p가 들어가는 모든 태그를 찾아준다
soup.find_all('p')

#첫번쨰 p태그를 찾는다
soup.find('p')

#class가 outer_text인 것을 찾아준다.(outer text : 태그 밖에 있는 텍스트)
soup.find_all(class_ = 'outer-text')

#id가 first인 태그를 찾아준다
soup.find_all(id = 'first')

soup.head

#soup의 head 다음에 오는 문자
soup.head.next_sibling

#soup의 head 전에 오는 문자
soup.head.previous_sibling

#soup의 head 다음다음에 오는 문자
soup.head.next_sibling.next_sibling

#body에서 제일 처음 나타나는 p태그
body.p

#p태그 다음다음에 오는 문자
body.p.next_sibling.next_sibling

#p태그에서 텍스트만 추출
for each_tag in soup.find_all('p') :
    print(each_tag.get_text())
    
#태그가 있던 자리는 줄바꿈이 표시되고 전체 텍스트를 보여줌
body.get_text()

#하이퍼링크 찾기
links = soup.find_all('a')
links

#href 속성을 찾으면 링크 주소를 얻을 수 있다.
for each in links :
    href= each['href']
    text = each.string
    print(text + '->' + href)
    
#크롬 개발자 도구를 이용해서 원하는 태그 찾기
from urllib.request import urlopen

url = "https://finance.naver.com/marketindex/"
page = urlopen(url)
soup = BeautifulSoup(page, "html.parser")

print(soup.prettify())

soup.find_all('span', 'value')[0].string

#다음 사이트에서 오늘 날짜 가져오기
url = "https://www.daum.net/"
page = urlopen(url)
soup = BeautifulSoup(page, "html.parser")

print(soup.prettify())

#오늘의 날짜
soup.find_all('strong','date_today')[0].string

#오늘의 기온
soup.find_all('span','txt_temper')[0].string

#실전 : 시카고 샌드위치 맛집 소개 사이트에 접근하기
from bs4 import BeautifulSoup
from urllib.request import urlopen

url_base = "https://www.chicagomag.com"
url_sub = '/Chicago-Magazine/November-2012/Best-Sandwiches-Chicago/'
url = url_base + url_sub

html = urlopen(url)
soup = BeautifulSoup(html, "html.parser")
soup

#모든 샌드위치집 리스트
print(soup.find_all('div', 'sammy'))

#리스트 갯수 구하기
len(soup.find_all('div', 'sammy'))

#첫번째 집 불러오기
print(soup.find_all('div', 'sammy')[0])

#접근한 웹 페이지에서 원하는 데이터 추출하고 정리하기
tmp_one = soup.find_all('div', 'sammy')[0]
type(tmp_one)

tmp_one.find(class_ = 'sammyRank')

#랭크 추출
tmp_one.find(class_ = 'sammyRank').get_text()

#메뉴이름과 가게 이름 동시 추출
tmp_one.find(class_ = 'sammyListing').get_text()

#하이퍼링크 추출
tmp_one.find('a')['href']

#정규식을 이용해서 메뉴이름, 가게이름 추출
import re #정규식
tmp_string = tmp_one.find(class_ = 'sammyListing').get_text()
re.split(('\n|\r\n'), tmp_string) #'\n' 또는 '\r\n'을 찾으면 문자열 나누기
#split 지정한 특정 패턴이 일치하면 분리
#re.split(pattern, string) : 문자열을 패턴 기준으로 나눔

print(re.split(('\n|\r\n'), tmp_string)[0]) #메뉴이름
print(re.split(('\n|\r\n'), tmp_string)[1]) #가게이름

#절대 경로로 잡힌 URL은 그대로 두고 상대경로로 잡힌 URL은 절대 경로로 변경
from urllib.parse import urljoin

#for문을 사용해서 가게이름, 메뉴, 랭크, 하이퍼링크를 리스트로 추출
rank = []
main_menu = []
cafe_name = []
url_add = []

list_soup = soup.find_all('div', 'sammy')

for item in list_soup :
    rank.append(item.find(class_ = 'sammyRank').get_text())    
    tmp_string = item.find(class_ = 'sammyListing').get_text()
    main_menu.append(re.split(('\n|\r\n'), tmp_string)[0])
    cafe_name.append(re.split(('\n|\r\n'), tmp_string)[1])    
    url_add.append(urljoin(url_base,item.find('a')['href']))
    
    
#Jupyter Notebook에서 상태 진행바를 쉽게 만들어 주는 모듈
#Anaconda prompt > pip install tqdm

#for문에 상태진행바 추가하기
from tqdm import tqdm_notebook
import time

rank = []
main_menu = []
cafe_name = []
url_add = []

list_soup = soup.find_all('div', 'sammy')

bar_total = tqdm_notebook(list_soup)

for item in bar_total :
    rank.append(item.find(class_ = 'sammyRank').get_text())    
    tmp_string = item.find(class_ = 'sammyListing').get_text()
    main_menu.append(re.split(('\n|\r\n'), tmp_string)[0])
    cafe_name.append(re.split(('\n|\r\n'), tmp_string)[1])  
    url_add.append(urljoin(url_base,item.find('a')['href']))
    
    time.sleep(0.05) 

#결과확인
rank[:5]
cafe_name[:5]  
main_menu[:5]
url_add[:5]

#가져온 데이터로 프레임 만들기
import pandas as pd

data = {'Rank' : rank, 'Menu': main_menu,
       'Cafe' : cafe_name, 'URL' : url_add}

df = pd.DataFrame(data)
df.head()

#컬럼순서 변경
df = pd.DataFrame(data, columns = ['Rank', 'Cafe', 'Menu', 'URL'])

df.to_csv('../data/best_sandwiches_chicago.csv', sep = ',', encoding = 'UTF-8')


n = 0
While n < 7:
    C = input().split()
    A = int(C[0])
    B = int(C[1])
    print(A+B)
    n +=1
    




















