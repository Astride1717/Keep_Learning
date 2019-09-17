###### 2019.07.03 #####

var1 <- seq(1,80, by=2) #1부터 80까지 2씩 증가
var1
install.packages("ggplot2")
library(ggplot2)

##variable

a <- 1
b <- 2
c <- 3.5
a+b+c

4/b
5*b

var1 <- c(1, 2, 5, 7, 8)
var1
var2 <- c(1:5)
var2
var3 <- seq(1,5)
var3
var4 <- seq(1, 10, by = 2)
var4
x <- c(4, 5, 6, 7)
x
y<- seq(1,4)
y
xy <- x+y
var5 <- seq(1, 10, by = 3)
var5
var6 <- seq(1, 10, by = 4)
var6
var7 <- seq(1, 10, by = 6)
var7
var1+2
var1+var2

str1 <- "a"
str1
str2 <- "text"
str2
str3 <-"Hello World"
str3
str4 <- c("a", "b", "c")
str4
str5 <- c("Hello!", "World", "Is", "good")
str5
str1 + 2
x <- c(1,2,3)
mean(x)
max(x)
min(x)
paste(str5, collapse = ",")
paste(str5, collapse = " ")
x_mean <- mean(x)
x_mean
str5_paste <- paste(str5, collapse = " ")
str5_paste

##qplot
x <- c("a","a", "b", "c")
qplot(x)
qplot(data = mpg, x = hwy)
View(mpg)
qplot(data = mpg, x = drv, y = hwy)
qplot(data = mpg, x = manufacturer)
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", color = drv)

c <- c(80, 60, 70, 50, 90)
mean(c)

c <- c(80,60,70,50,90)
c

score <- c
mean(score)

#####2019.07.04#####
##data frame 만들기
english <- c(90, 80, 60, 70)
english
math <- c(50, 60, 100, 20)
math
df_midterm <- data.frame(english, math)
df_midterm
class <- c(1, 1, 2, 2)
class
df_midterm <- data.frame(english, math, class)
df_midterm

mean(df_midterm$english)
mean(df_midterm$math)

df_midterm <- data.frame(english = c(90, 80, 60, 70),
                          math = c(50, 60, 100, 20),
                          class = c(1, 1, 2, 2))
df_midterm

fruit <- data.frame(name = c("사과", "딸기", "수박"),
                price = c(1800, 1500, 3000),
                quantity = c(24, 38, 13))
fruit

mean(fruit$price)
mean(fruit$quantity)

##readxl 패키지 만들기
#install.packages("readxl")
library(readxl) #엑셀파일을 불러올땐 반드시 이 패키지가 설치되어 있어야 한다.

#현재 작업 폴더 확인
getwd()

#작업 폴더 변경
setwd("C:work_R")

#엑셀파일 불러오기(File -> import Dataset으로도 사용가능)
df_exam <- read_excel("Data/excel_exam.xlsx")
View(df_exam) #엑셀파일 보기

mean(df_exam$english)
mean(df_exam$science)

#컬럼 명이 없는 파일을 읽기
df_exam_novar <- read_excel("data/excel_exam_novar.xlsx", col_names = F)
df_exam_novar

#파일시트가 여러개 있을때 특정 시트만 가져오기
df_exam_sheet <- read_excel("data/excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet

#csv파일 불러오기(read.csv 내제함수)
df_csv_exam <- read.csv("data/csv_exam.csv")
df_csv_exam

#데이터 프레임을 csv파일로 저장하기기(설정한 디렉토리에 저장된다)
write.csv(df_midterm, file = "df_midterm.csv")

#문자가 들어있는 파일 읽기
df_csv_exam <- read.csv("data/csv_exam.csv", stringsAsFactors = F)

##### 5장 데이터 파악하기#####
exam <- read.csv("data/csv_exam.csv")
exam

#첫 6개 행 출력
head(exam)

#12줄까지 출력
head(exam,12)

#뒤에서부터 6개 행 출력
tail(exam)

#뒤에서부터 10개 행 출력
tail(exam,10)

#원본파일 출력
View(exam)

#행, 열 갯수 출력
dim(exam)

#변수들의 속성 출력
str(exam) #20개 오브젝트, 변수 5개, 정수로 이루어져 있는 데이터프레임

#요약통계량(최소값, 1사분위수,중간값,평균, 3사분위수, 최대값)
summary(exam)

#mpg파일을 데이터프레임 형태로 불러오기
mpg <- as.data.frame(ggplot2::mpg)
#패키지 로드
library(ggplot2)
mpg
head(mpg,12)
tail(mpg,10)
dim(mpg)
View(mpg)
str(mpg)
summary(mpg)

#mpg에서 내가 원하는 열만 가져오고 싶을때
mpg1 <- data.frame(mpg$manufacturer, mpg$cty, mpg$hwy)

#dplyr 패키지 다운&로드
install.packages("dplyr")
library(dplyr)

df_raw <- data.frame(var1 = c(1,2,1),
                     var2 = c(2,3,2))
df_raw

df_new <- df_raw #복사본 생성(원본 데이터는 항상 남겨둘 것)
df_new           #출력
#변수명 바꾸기
df_new<- rename(df_new, v2 = var2) #새 변수명이 앞으로 온다.
df_new

mpg2 <- mpg
mpg2 <- rename(mpg2, city = cty, highway = hwy)
View(mpg2)
mpg3 <- data.frame(mpg2$city, mpg2$highway)
mpg3
head(mpg2, 10)

#파생변수 만들기
df <-data.frame(var1 = c(4, 3, 8),
                var2 = c(2, 6, 1))

df$var_sum <- df$var1 + df$var2 #var_sum변수 추가

df$var_mean <- df$var_sum/2
df

mpg$total <- (mpg$cty + mpg$hwy)/2
head(mpg)  #추가된 변수 확인
mean(mpg$total)

#요약통계
summary(mpg$total)

#히스토그램 생성
hist(mpg$total)

#조건문으로 합격 판정 변수 만들기 
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")

#빈도표로 합격 판정 자동차 수 출력
table(mpg$test)

#막대그래프로 빈도표현
library(ggplot2)
qplot(mpg$test)

#중첩조건문
mpg$grade <- ifelse(mp$total >=30, "A", ifelse(mps$total >=20, "B", "C"))
table(mpg$grade)

#등급 빈도 막대 그래프 생성
qplot(mpg$grade)

#등급추가
mpg$grade2 <-ifelse(mpg$total >=30, "A",
                    ifelse(mpg$total >=25, "B",
                           ifelse(mpg$total < 24,"C","D")))
table(mpg$grade2)
qplot(mpg$grade2)


#1. math, english, science 3과목의 합계를 출력(s_total)
exam <- read.csv("data/csv_exam.csv")
exam$s_total <- exam$math + exam$english + exam$science
exam
  
#2. math, english, science 3과목의 평균 출력(s_mean)
exam$s_mean <- exam$s_total/3
exam

#3. 평균이 60점 이상이면 'pass' 그렇지 않으면 'fail'를 부여하는 파생변수 s_test를 생성하세요.
exam$s_test <- ifelse(exam$s_mean >= 60, "pass", "fail")

#4.3의 결과의 빈도수와 그래프로 나타내세요.
table(exam$s_test)
qplot(exam$s_test)

#5. 평균이 85점 이상이면 "A", 70 이상이면 "B", 그 외는 "fail"를 부여하는 파생변수 test2를 생성하세요.
exam$s_test2 <- ifelse(exam$s_mean >= 80, "A",
                       ifelse(exam$s_mean >= 70, "B", "fail"))

#6. 5의 결과를 상위 10개만 출력하세요.
head(exam$s_test2,10)

#7. 5의 결과를 하위 7개만 출력하세요.
tail(exam$s_test2,7)

#8. 5의 결과를 빈도수와 그래프로 나타내세요.
table(exam$s_test2)
qplot(exam$s_test2)

#####6장 데이터 가공하기#####
#조건에 맞는 데이터만 추출하기
exam <-read.csv("csv_exam.csv")
exam %>%filter(class == 1) #1반 데이터만 추출
exam %>%filter(class == 3) #3반 데이터만 추출
exam %>% filter(class !=1) #1반이 아닌 데이터만 추출
exam %>% filter(class != 3) #3번이 아닌 데이터만 추출
exam %>% filter(math >50) #수학점수가 50점 이상인 데이터만 추출
exam %>% filter(english >= 80) #영어점수가 80점 이상인 경우
exam %>% filter(english <= 80)

#여러조건을 충족하는 행 추출하기(AND)
exam %>% filter(class == 1 & math >=50)
exam %>% filter(class == 2 & english >= 80)

#여러조건 중 하나 이상 충족하는행 추출하기(OR)
exam %>% filter(math >= 90 | english >=90)
exam %>% filter(english <90 | science <50)

#목록에 해당하는 행 추출하기
exam %>% filter(class ==1 | class == 3 | class == 5)
exam %>% filter(class %in% c(1,3,5))  #%in% (mathing operator)사용

#추출한 행으로 데이터 만들기
class1 <- exam %>%filter(class == 1)
class2 <- exam %>%filter(class == 2)
mean(class1$math)
mean(class2$math)
mean(c(class1$math,class2$math))

#133p. 연습문제
#1.
mpg <- as.data.frame(ggplot2::mpg)
xx <- mpg %>% filter(displ<= 4)  #연비가 4 이하인 자동차 추출
mean(xx$hwy) #고속도로 연비 평균: 25.96319
yy <- mpg %>% filter(displ >= 5) #연비가 5이상인 자동차 추출
mean(yy$hwy) #고속도로 연비 평균 : 18.07895
#연비가 4이하인 자동차의 고속도로 연비가 더 높다.

#2.
zz <- mpg %>% filter(manufacturer == 'audi') #아우디 데이터만 추출
mean(zz$cty) #아우디의 평균 도시연비 추출 : 17.61111
ww <- mpg %>% filter(manufacturer =='toyota') #토요타 데이터만 추출
mean(ww$cty)  #토요타의 평균 도시연비 추출 : 18.52941
# 토요타의 도시연비가 평균적으로 더 높다.

#3.
avr <- mpg %>% filter(manufacturer %in% c('chevrolet','ford','honda')) #세 회사 데이터 동시추출
mean(avr$hwy) # 고속도로 연비 전체평균: 22.50943


#####2019.07.05#####

#1.
getwd()
library(dplyr)
data1 <- read.csv("data/2013년_프로야구선수_성적.csv")
View(data1)

#2.
data_a <- data1 %>% filter(경기 >= 120)
data_a
#3.
data_b <- data_a %>% filter(경기 >= 120 & 득점 >= 80)
data_b
#4.
data_c <- data1 %>% filter(포지션 == '1루수' | 포지션 == '3루수')
data_c <- data1 %>% filter(포지션 %in% c('1루수','3루수'))
data_c

#5. 선수명, 포지션, 팀 컬럼 데이터만 조회하기
data_x <- data1 %>% 
  select('선수명', '포지션', '팀')

#6.순위~타수 컬럼까지 출력하기
data_y <- data1 %>% 
  select('순위':'타수')

#7.특정 컬럼만 제외하고 출력하기(홈런, 타점, 도루)
data1 %>% 
  select(-'홈런', -'타점', -'도루')

#8.타수가 400초소과한 선수명, 팀, 경기, 타수 칼럼을 출력
data_z <- data1 %>% 
  filter(타수 >= 400) %>% 
  select('선수명','팀', '경기', '타수')

#9.위 8번을 타수 순으로 정렬하세요
data_z %>% 
  arrange('타수')

#10.8번에 mutate()함수를 이용해서 경기*타수 컬럼을 추가하세요.
data_z %>% 
  mutate('경기*타수' = 경기 * 타수) %>%


#필요한 변수만 추출하기
exam %>% select(math) #수학점수만 가져오기
exam %>% select(english)
exam %>% select(class,math,english)
exam %>% select(-math) #수학만 뺀 변수 추출
exam %>% select(-math, -english) #수학과 영어를 뺀 변수 추출

#dplyr함수 조합하기
exam %>% filter(class == 1) %>%  select(english) #1반 영어점수만 추출

#가독성 있게 줄 바꾸기
exam %>% 
  filter(class ==1) %>% 
  select(english)

#일부만 출력하기
head(exam, 5)
tail(exam, 3)
exam %>%               #학번과 수학점수를 첫 10줄만 출력
  select(id,math) %>%
  head(10)           

#1.138p
mpg <- as.data.frame(ggplot2::mpg)
mpg_a <- mpg %>%      #mpg파일에서 class와 cty만 추출
  select(class, cty)
mpg_suv <- mpg_a %>%  
  filter(class == "suv") 
mpg_compact <- mpg_a %>% 
  filter(class =="compact")

#2.
mean(mpg_suv$cty) #suv의 도시연비 평균:13.5
mean(mpg_compact$cty) #compact의 도시연비 평균:20.12766


#순서대로 정렬하기
exam %>% arrange(math) #수학점수 오름차순 정렬
exam %>% arrange(desc(math)) #수학점수 내림차순 정렬
exam %>% arrange(class, math) #정렬기준 변수 2개(반번호 순 > 수학점수 오름차순)
exam %>% arrange(class, desc(math)) #반번호 순 > 수학점수 내림차순

#1.141p
mpg_audi <- mpg%>%filter(manufacturer == "audi")
mpg_audi %>% arrange(desc(hwy)) %>% 
  head(5)

#파생변수 추가하기 mutate()사용
exam$total <- exam$english + exam$science
exam %>% 
  mutate(total = math + english+ science) %>%  #Total 변수를 만들어 추가
  head
exam %>% 
  mutate(total = math + english + science,
         mean = (math + english +science)/3) %>% 
  head

exam %>% 
  mutate(test = ifelse(science >=60, "pass", "fail")) %>% 
  head

exam %>% 
  mutate(total = math + english + science) %>% 
  arrange(total) %>% 
  head

#집단별로 요약하기 summarise() 함수
exam %>% 
  summarise(mean_math = mean(math)) #수학점수 평균 구하기
exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math)) #반 별로 수학점수 평균 구하기
exam %>% 
  group_by(class) %>%                   #반 별로 데이터 합치기
  summarise(mean_math = mean(math),     #수학점수 평균
            sum_math = sum(math),       #수학점수 총합
            median_math = median(math), #중학점수 중간값
            n = n())                    #학생 수(빈도수)
mpg %>% 
  group_by(manufacturer, drv) %>%  #제조사, 구동방식별로 분류
  summarise(mean_cty = mean(cty)) %>%  #도시연비 평균
  head(10)                            #첫 10행만 출력

#148p
mpg %>% 
  group_by(manufacturer) %>%
  filter(class == 'suv') %>% 
  mutate(total = (cty+ hwy)/2) %>%          #통합 연비 평균
  summarise(mean_total = mean(total)) %>%   #그룹별(제조사) 통합연비 평균
  arrange(desc(mean_total)) %>% 
  head(5)

#데이터 가로로 합치기 left_join()함수
test1 <- data.frame(id = c(1,2,3,4,5),
                    midterm = c(60, 80, 70, 90, 85))
test2 <- data.frame(id = c(1,2,3,4,5),
                    final = c(70, 83, 65, 95, 80))
total<- left_join(test1, test2, by = "id") #두 데이터 프레임을 학번 기준으로 합치기

name <- data.frame(class = c(1,2,3,4,5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
exam_new <-left_join(exam, name, by = "class") #반 번호 기준으로 합치기

#데이터 세로로 합치기 bind_rows함수 
group_a <- data.frame(id = c(1,2,3,4,5),
                      test = c(60, 80, 70, 90, 85))
group_b <- data.frame(id = c(6,7,8,9,10),
                      test = c(70, 83, 65, 95, 80))
group_all <- bind_rows(group_a, group_b) #두 데이터의 변수명이 같아야 한다.

#1. 156p
fuel <- data.frame(fl = c("c", "d", "e", "p", "r"),
                   price_fl = c("CNG", "diesel", "ethanol E85","premium", "regular"))
fuel_price <- data.frame(fl = c("c", "d", "e", "p", "r"),
                         price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                         stringsAsFactors = F)
price_fl <- left_join(mpg,fuel_price, by = "fl") #연료가격 변수 추가

#2.
price_fl %>% 
  select(model, fl, price_fl) %>% 
  head(5)

##### 7장 데이터 정제#####
#결측치(missing value) : NA
df <- data.frame(sex =c("M", "F", NA, "M", "F"),
                 score = c(5,4,3,4,NA))

is.na(df)       #결측치 확인
table(is.na(df)) #결측치 빈도 출력
table(is.na(df$sex)) #sex 결측치 빈도 출력
table(is.na(df$score)) #score 결측치 빈도 출력

#결측치 포함된 상태로 분석 >> NA값 출력
mean(df$score)
sum(df$score)

#결측치 제거하기
library(dplyr)
df %>% filter(is.na(score))  #score가 NA인 데이터만 출력
df %>% filter(!is.na(score)) #score 결측치 제거하고 출력

df_nomiss <- df %>% filter(!is.na(score)) #score 결측치 제거하고 새 변수 할당
mean(df_nomiss$score)                     #score 평균 산출
sum(df_nomiss$score)                      #합계 산출

#여러변수 동시에 결측치 제거
df_nomiss <- df %>% filter(!is.na(score)& !is.na(sex))

df_nomiss2 <- na.omit(df) #모든 변수에 결측치 없는 데이터 추출

#함수의 결측치 제외 기능 na.rm = T (NA remove)
mean(df$score, na.rm = T) #결측치 제외하고 평균 산출
sum(df$score, na.rm = T) #결측치 제외하고 합계 산출

#함수의 결측치 제외 기능을 이용해 평균, 합계, 중간값 산출
exam <-read.csv("data/csv_exam.csv")
exam[c(3, 8, 15), "math"] <- NA           #3, 8, 15 행의 값을 NA값으로 대체체
exam %>% summarise(mean_math = mean(math))
exam %>% summarise(mean_math = mean(math, na.rm = T),  
                   sum_math = sum(math, na.rm = T),
                   median_math = median(math, na.rm = T)) 

#평균값으로 결측치 대체하기
exam$math <- ifelse(is.na(exam$math), 55, exam$math) #조건문 : NA가 있으면 55로 대체
table(is.na(exam$math))

#170p
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65, 124, 131, 153, 212), "hwy"] <- NA    #NA를 5개 행에 할당
#1. 
is.na(mpg)
table(is.na(mpg))
table(is.na(mpg$hwy)) #결측치 5개
table(is.na(mpg$drv)) #결측치 0개

#2. 
mpg_n <- mpg %>% filter(!is.na(hwy))   #hwy결측치 제거
mean(mpg_n$hwy, na.rm = T)             #결측치 제외하고 평균값
mpg_n %>% group_by(drv) %>%            #구동방식별로 분류
  summarise(mean_hwy = mean(hwy)) %>%  #구동방식 별 도로연비 평균
  arrange(desc(mean_hwy))              #높은 값을 보기 위해 내림차순 정렬

#이상치 정제하기
outlier <- data.frame(sex = c(1,2,1,3,2,1),
                      score = c(5,4,3,4,2,6))
#이상치 확인하기
table(outlier$sex)
table(outlier$score)

#결측 처리하기
outlier$sex <-ifelse(outlier$sex == 3, NA, outlier$sex)      #성별이 3일 때 NA로 대체
outlier$score <-ifelse(outlier$score > 5, NA, outlier$score) #점수가 5 이상일 때 NA로 대체
outlier

#결측치 제외하고 분석
outlier %>% 
  filter(!is.na(sex) & !is.na(score)) %>% #결측치 제외
  group_by(sex) %>%                       #성별로 분류
  summarise(mean_score = mean(score))     #남녀별 평균치 출력

#극단적인 값 제거하기
mpg <- as.data.frame(ggplot2::mpg)
boxplot(mpg$hwy)$stats  #상자그림 통계치를 출력하여 극단치 찾기 : 12~37 벗어나면 극단치
mpg$hwy <-ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy) #12~37 벗어나면 NA 할당
table(is.na(mpg$hwy))

mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy, na.rm = T))


#####2019.07.08#####
#####8장 그래프 만들기#####
#1. 배경 설정하기
library(ggplot2) #패키지 로드하기
ggplot(data = mpg, aes(x = displ, y = hwy)) #ggplot(데이터 세트, aes(데이터속성))

#2. 그래프 추가하기 #ggplot패키지는 +를 사용해 함수를 추가한다.
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point() 

#3. 축 범위 조정
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  xlim(3, 6)                   #x축 범위 설정
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()  + 
  xlim(3, 6) + ylim(10, 30)   #y축 범위 설정

#qplot 패키지는 전처기 단계에서 데이터를 확인하는 용도로 많이 사용
#ggplot은 최종 분석결과용 그래프를 만드는 용도로 사용

#1. 188p
ggplot(data = mpg, aes(x = cty, y = hwy)) +
  geom_point() 


#2.
midwest <- as.data.frame(ggplot2::midwest)
ggplot(data = midwest, aes(x = poptotal, y = popasian)) + 
  geom_point() +
  xlim(0, 500000) +
  ylim(0, 10000)

#막대그래프로 집단 간 차이 표현하기
library(dplyr)
mpg <- as.data.frame(ggplot2::mpg)

df_mpg <- mpg %>%  
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy)) #집단별 평균표 만들기   
df_mpg

ggplot(data = df_mpg, aes(x = drv, y = mean_hwy)) +
  geom_col()           #그래프 생성

#reorder()를 사용하여 크기순으로 정렬
ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) + 
  geom_col()   #-기호를 붙여 연비 평균값을 기준으로 내림차순 정렬

#값의 개수(빈도)로 막대의 길이를 표현한 그래프
ggplot(data = mpg, aes(x = drv)) +
  geom_bar() #x축범주 변수, y축은 빈도표현 (->col()대신 bar()를 넣는다)

#geom_col() : 자료 요약본으로 만든 그래프
#geom_bar() : 원자료로 만든 그래프

#hwy변수의 빈도 분포 그래프(x축 연속 변수, y축은 빈도)
ggplot(data = mpg, aes(x = hwy)) +
  geom_bar()

#1. 193p 
s_mpg <- mpg %>% 
  filter(class == "suv") %>%
  group_by(manufacturer) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)

ggplot(data = s_mpg, aes(x = reorder(manufacturer, -mean_cty), y = mean_cty)) +
  geom_col()

#2.
ggplot(data = mpg, aes(x= class)) + geom_bar(color= 'blue', size = 3)

#선 그래프 - 시계열 그래프 표현하기
View(economics)
ggplot(data = economics,  aes(x = date, y = unemploy)) +
  geom_line()
#                     
#1. 195p
ggplot(data = economics, aes(x = date, y = psavert)) +
  geom_line(color = 'red')

#시계열 그래프 기간 정하기
p <- ggplot(data = economics, aes(x = date, y + psavert)) +
  geom_line(color = '#00AFBB', size = 1)
min <-as.Date("2002-1-1") #데이터타입 변환
max <-as.Date("2010-1-1") #데이터타입 변환
p + scale_x_date(limits = c(min,max))

#수직선
ggplot(data = economics, aes(x = date, y =psavert )) +
  geom_line() + 
  geom_hline(yintercept = mean(economics$psavert))

#상자그림으로 데이터 분포 표현하기
ggplot(data = mpg, aes(x = drv, y = hwy))+
  geom_boxplot()

#1. 198
mpg_2 <- mpg %>% 
  filter(class == c('compact', 'subcompact', 'suv'))

ggplot(data = mpg_2, aes(x = class, y = cty))+
  geom_boxplot()

#1.팀별로 평균 경기횟수 출력
data1 <- read.csv("2013년_프로야구선수_성적.csv")
View(data1)
data2 <- data1 %>% group_by(팀) %>% 
   summarise(mean1 = mean(경기))

#2.1번의 결과를 그래프로 그리세요
ggplot(data = data2, aes(x =팀 , y = mean1, fill = 팀)) +
  geom_col()

#3.학생별국어성적_new.txt 데이터를 불러오세요
korean <- read.csv("Data/학생별국어성적_new.txt")
View(korean)

#4. x축은 이름 y축은 점수로 산점도에 표시되게 그래프를 그려보세요.
ggplot(data = korean, aes(reorder(x =이름, 점수), y = 점수, col = 이름 )) +
  geom_point(shape = 9, show.legend = TRUE)

#5. 4를 막대그래프로 그려보세요
ggplot(data = korean, aes(x = 이름, y = 점수, fill = 이름 )) +
  geom_col()

#####9장 데이터분석 프로젝트#####
#install.packages("foreign") foreign 패키지 설치
library(foreign) #SPSS 파일 로드
library(dplyr)   # 전처리
library(ggplot2) #시각화
library(readxl)  #엑셀파일 불러오기

#한국복지패널데이터 가져오기
raw_welfare <-read.spss(file = "data/Koweps_hpc10_2015_beta1.sav", to.data.frame = T)
welfare <- raw_welfare
View(welfare)
head(welfare)
tail(welfare)
dim(welfare)
str(welfare)
summary(welfare)

#변수명 바꾸기
welfare <- rename(welfare,
                  sex = h10_g3,
                  birth = h10_g4,
                  marriage = h10_g10,
                  religion = h10_g11,
                  income = p1002_8aq1,
                  code_job = h10_eco9,
                  code_region = h10_reg7)

#변수 검토하기
class(welfare$sex) #변수타입 파악
table(welfare$sex) #변수 갯수 파악


#전처리
welfare$sex <- ifelse(welfare$sex == 9, NA, welfare$sex) #이상치 결측처리
table(is.na(welfare$sex))  #결측치 확인

#성별 항목 이름 부여
welfare$sex <- ifelse(welfare$sex == 1, "male", "female") #1이면 남성, 아니면 여성으로 대체
table(welfare$sex)
qplot(welfare$sex)

#이상치 확인
class(welfare$income)
summary(welfare$income)
qplot(welfare$income) #데이터 분포 확인
qplot(welfare$income) + xlim(0, 1000) #소득 범위 재설정
welfare$income <-ifelse(welfare$income %in% 
                          c(0, 9999), NA, welfare$income) #이상치 결측 처리 (범위 : 1 ~ 9999)
table(is.na(welfare$income))   #결측치 확인

#성별에 따른 월급 차이 분석하기
sex_income <- welfare %>% 
  filter(!is.na(income)) %>% #결측치 제거
  group_by(sex) %>% #성별로 데이터 그룹
  summarise(mean_income = mean(income)) #월급 평균값
sex_income
ggplot(data = sex_income, aes(x = sex, y = mean_income, fill = sex)) + 
  geom_col()

#나이와 월급의 관계
class(welfare$birth)
summary(welfare$birth) #이상치 확인
qplot(welfare$birth) #분포 확인
table(is.na(welfare$birth)) #결측치 확인

welfare$birth <-ifelse(welfare$birth == 9999, NA, welfare$birth) #이상치 결측 처리
table(is.na(welfare$birth))

welfare$age <- 2015 - welfare$birth + 1  #파생변수 만들기 - 나이
summary(welfare$age)

age_income <-welfare %>% 
  filter(!is.na(income)) %>%            #결측치 없는 소득값만 가져오기
  group_by(age) %>%                     #나이별로 합치기
  summarise(mean_income = mean(income)) #나이별 월급 평균 산출

head(age_income)

ggplot(data = age_income, aes(x = age, y = mean_income, fill = age)) +
  geom_line()

#파생변수 만들기 - 연령대
welfare <- welfare %>% 
  mutate(ageg = ifelse(age < 30, "young", 
                       ifelse(age <= 59, "middle", "old")))
table(welfare$ageg)
ggplot(data = welfare, aes(x = ageg, y = income, fill = ageg)) +
  geom_col()

#연령대별 평균 소득 산출
ageg_income<- welfare %>% 
  filter(!is.na(income)) %>%            #결측치 없는 소득값만 가져오기
  group_by(ageg) %>%                    #연령대별로 합치기
  summarise(mean_income = mean(income)) #연령대별 평균 소득 산출

ggplot(data = ageg_income, aes(x = ageg, y = mean_income, fill = ageg)) + 
  geom_col() +
  scale_x_discrete(limits = c("young", "middle", "old")) #scale함수로 연령대 문자열 정렬 

#연령대 및 성별 월급 차이
sex_income <- welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(ageg, sex) %>%               #연령대별, 성별별로 합치기
  summarise(mean_income = mean(income)) #연령대별 평균 소득 산출

ggplot(data = sex_income, aes(x = ageg, y = mean_income, fill = sex) ) +
  geom_col() +                  #평균소득 그래프 안에 남녀가 나눠어져 표시된다                
  scale_x_discrete(limits = c("young", "middle", "old"))

ggplot(data = sex_income, aes(x = ageg, y = mean_income, fill = sex) ) +
  geom_col(position = "dodge") +  #포지션을 추가해 막대분리
  scale_x_discrete(limits = c("young", "middle", "old"))

#나이에 따른 남녀 월급차이
sex_age <- welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(age, sex) %>% 
  summarise(sex_age_mean = mean(income))
ggplot(data = sex_age, aes(x= age, y = sex_age_mean, col = sex)) +
  geom_line()

#직업에 따른 월급차이 구하기
class(welfare$code_job)
table(welfare$code_job)     #변수 검토하기
list_job <- read_excel("Data/Koweps_Codebook.xlsx", 
                       col_names = T, sheet = 2) #코드명 파일에 2번시트 불러오기
head(list_job)
dim(list_job)

#조인을 이용해 직업명 변수 추가하기
welfare <- left_join(welfare, list_job, id = "code_job") 
welfare %>% 
  filter(!is.na(code_job)) %>%  #결측치 제거(직업이 명시되지 않은 사람 제외)
  select(code_job, job)
View(welfare)

job_income <- welfare %>% 
  filter(!is.na(income) & !is.na(job)) %>% #수입, 직업이 공란인 데이터 제외
  group_by(job) %>% 
  summarise(mean_income = mean(income))  #직업별 평균 월급

#월급을 많이 받는 상위 10개의 직업
top10 <- job_income %>%                  
  arrange(desc(mean_income)) %>% 
  head(10)

ggplot(data = top10, aes(reorder(x = job, mean_income), 
                         y = mean_income, fill = job)) + #월급순으로 정렬
  geom_col(show.legend = F) +
  coord_flip() #막대를 오른쪽으로 90도 회전

#월급별 하위 10개 직업
bottom10 <- job_income %>% 
  arrange(desc(mean_income)) %>% 
  tail(10)

ggplot(data = bottom10, aes(reorder(x = job, mean_income), 
                            y = mean_income, fill = job)) +
  geom_col(show.legend = F) +
  coord_flip() +
  ylim(0, 850)

#성별 직업 빈도 구하기
job_male <- welfare %>% 
  filter(!is.na(job) & sex == "male") %>%  #남성 직업 빈도 상위 10개
  group_by(job) %>%
  summarise(n = n()) %>%       #빈도 변수 n 설정
  arrange(desc(n)) %>% 
  head(10)

job_female <- welfare %>% 
  filter(!is.na(job) & sex == "female") %>%   #여성 직업 빈도 상위 10개
  group_by(job) %>% 
  summarise(n = n()) %>%        #빈도 변수 n 설정
  arrange(desc(n)) %>% 
  head(10)

ggplot(data = job_male, aes(x = reorder(job, n), y = n)) + 
  geom_col() + 
  coord_flip()

ggplot(data = job_female, aes(x = reorder(job, n), y = n)) +
  geom_col() +
  coord_flip()

#종교 유무에 따른 이혼율 구하기
#필요한 변수1 : 종교
class(welfare$religion)  #변수 검토
table(welfare$religion)

welfare$religion <-ifelse(welfare$religion == 1, "yes", "no") #전처리
table(welfare$religion)
qplot(welfare$religion)

#필요한 변수2 :결혼상태
class(welfare$marriage) #변수 검토
table(welfare$marriage)  #0 ~ 6에 대응되는 파생변수 필요

#이혼 여부 변수 만들기 (#이혼, 기혼을 제외한 나머지는 결측치 처리)
welfare$group_marriage <-ifelse(welfare$marriage == 1, "marriage", 
                                ifelse(welfare$marriage == 3, "divorce", NA)) 
qplot(welfare$group_marriage)
table(is.na(welfare$group_marriage))
class(welfare$group_marriage)

religion_marriage <- welfare %>% 
  filter(!is.na(group_marriage)) %>% #이혼 여부 변수 결측치 제거
  group_by(religion, group_marriage) %>%       #종교여부, 이혼 여부 별로 합치기
  summarise(n = n()) %>%             #빈도 변수 n 생성
  mutate(tot_group = sum(n)) %>%     #합계변수 생성 (total = 종교 유 + 무)
  mutate(pct = round(n/tot_group*100, 1))  #퍼센트 산출(소수점 첫째자리)

#이혼율 표 만들기
divorce <- religion_marriage %>% 
  filter(group_marriage == "divorce") %>% #이혼추출
  select(religion, pct)                   #원하는 열만 가져오기

ggplot(data = divorce, aes(x = religion, y = pct)) +
  geom_col()
 
#연령대별 이혼율 표 만들기
ageg_marriage <- welfare %>% 
  filter(!is.na(group_marriage)) %>% 
  group_by(ageg, group_marriage) %>% 
  summarise(n= n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round(n / tot_group*100, 1))

ggplot(data = ageg_marriage, aes(x = ageg, y = pct, fill = ageg)) + 
  geom_col(position = "dodge")

#사회초년생 제외 이혼만 추출
ageg_divorce <- ageg_marriage %>% 
  filter(ageg != "young" & group_marriage == "divorce") %>% 
  select(ageg, pct)

#연령대, 종교, 결혼상태별 비율표
ageg_religion_marriage <- welfare %>% 
  filter(!is.na(group_marriage) & ageg != "young") %>% #사회초년생 제외 추출
  count(ageg, religion, group_marriage) %>%  #행의 갯수 세기 count() =group_by() + summarise()
  group_by(ageg, religion) %>% 
  mutate(pct = round(n/sum(n)*100, 1))

#연령대 및 종교 유무별 이혼율 표
df_divorce <- ageg_religion_marriage %>% 
  filter(group_marriage == "divorce") %>% 
  select(ageg, religion, pct)

ggplot(data = df_divorce, aes( x = ageg, y = pct, fill = religion)) + 
  geom_col(position = "dodge", show.legend = F)


#1. 결혼 유무와 소득의 관계
class(welfare$marriage)
table(welfare$marriage)

marriage_single <- welfare%>% 
  filter(marriage == 1 | marriage == 5)

marriage_income <- welfare %>% 
  filter(!is.na(income) & !is.na(marriage)) %>% 
  group_by(marriage_single) %>%
  summarise(mean_income1 = mean(income))

ggplot(data = marriage_income, 
       aes(x = marriage_single, y = mean_income1)) +
  geom_col()
  

#2. 결혼 유무와 남녀 소득의 관계
marriage_sex_income <- welfare %>% 
  select(sex, marriage_single, income) %>% 
  filter(!is.na(income) & !is.na(marriage_single)) %>%
  group_by(sex, marriage_single) %>% 
  summarise(mean_income = mean(income))

ggplot(data = marriage_sex_income, 
       aes(x= marriage_single, y = mean_income, fill = sex)) +
  geom_col(position = "dodge")


#지역별 연령대 비율 구하기
class(welfare$code_region)
table(welfare$code_region)

#지역 코드 목록 만들기
list_region <- data.frame(code_region = c(1:7), #1 - 7까지 순차적으로 값 부여
                          region = c("서울",
                                     "수도권",
                                     "부산/경남/울산",
                                     "대구/경북",
                                     "대전/충남",
                                     "강원/충북",
                                     "광주/전남/전북/제주"))

#조인을 이용하여 지역명 변수 추가
welfare <- left_join(welfare, list_region, id = "code_region")
welfare %>% 
  select(code_region, region) %>% 
  head

#지역별 연령대 비율푶 만들기
region_ageg <- welfare %>% 
  group_by(region, ageg) %>% 
  summarise(n = n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round(n/tot_group*100, 2))

ggplot(data = region_ageg, aes(x = region, y = pct, fill = ageg)) +
  geom_col() +
  coord_flip()

#노년층 비율 높은 순으로 정렬
list_order_old <- region_ageg %>% 
  filter(ageg =="old") %>% 
  arrange(pct)

ggplot(data = list_order_old, aes(x = reorder(region, pct), y = pct, fill = ageg)) +
  geom_col()

#지역명 순서 변수 만들기
order <- list_order_old$region
order

ggplot(data = region_ageg, aes(x = reorder(region, pct), y = pct, fill = ageg)) +
  geom_col() +
  coord_flip() +
  scale_x_discrete(limits = order)   #노년층 비율 기준으로 정렬

#연령순으로 막대 나열하기
region_ageg$ageg <- factor(region_ageg$ageg, #문자형 factor로 변환
                           level = c("old", "middle", "young")) #level파라미터로 순서지정
class(region_ageg$ageg) 
levels(region_ageg$ageg)

#####10장 텍스트 마이닝#####
#자바 설치후 패키지 설치 +로드
#install.packages("rJava")
#install.packages("memoise")
#install.packages("KoNLP")
#install.packages("digest")
library(KoNLP)
library(dplyr)

#자바 폴더 경로 설정
Sys.setenv(JAVA_HOME = "C:/Program Files/Java/jre1.8.0_211/")

useNIADic()
getwd()

#데이터 불러오기
txt <- readLines("Data/hiphop.txt")
head(txt)

#stringr 패키지를 이용해 특수문자 제거
#install.packages("stringr")
library(stringr)
txt <- str_replace_all(txt, "\\W", " ")

#가장 많이 사용된 단어
nouns <- extractNoun(txt)   #명사 추출
wordcount <- table(unlist(nouns))  #추출한 명사 리스트를 문자열 벡터로 변환, 단어별 빈도표 생성
df_word <- table(unlist(nouns))  # 데이터 프레인으로 변환
df_word <- as.data.frame(wordcount, stringsAsFactors = F)
df_word <- rename(df_word,       # 변수명 수정
                  word = Var1,
                  freq = Freq)
df_word <- filter(df_word, nchar(word) >= 2)  #nchar함수로 두글자 이상의 단어만 추출

#빈도순으로 정렬, 상위 20개 단어만 추출
top_20 <- df_word %>% 
  arrange(desc(freq)) %>% 
  head(20)
  
#워드 클라우드 만들기
#패키지 준비하기 install.packages("wordcloud")
library(wordcloud)
library(RColorBrewer)  #디폴트로 설치되어 있음

#단어색상 목록 만들기
pal <- brewer.pal(9, "Blues")[5:9]

#난수 고정하기
set.seed(1234)
wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 2,
          max.words = 200,
          randem.order = F,   #고빈도 단어 중앙 배치
          rot.per = .1,       #회전 단어 비율
          scale = c(4,0.3),   #단어 크기 범위
          colors = pal)       #색상목록

#####2019.07.10#####
#워드 클라우드에 자주 쓰이는 함수
#readLine() : 파일을 행 단위로 읽는 기능
#extractNoun() : 저장된 단어에서 명사만 분리
#as.data.frame() : 데이터 속성을 프레임 형태로 바꾸는 함수
#unlist() : 데이터를 벡터로 변환
#(단어 처리된 데이터를 더 편하게 처리하기 위해 단어 뭉치형태로 변환)
#table() :  통계분석 함수로 사용 빈도에 따라 워드클라우드에서 크고 굴게 표시해야 하므로 단어의 사용빈도를 파악
#sapply(데이터, 적용할 함수) : 모든 행에 함수를 적용
#nchar() : 두 글자 이상인 단어만 변수 할당
#wordcloud(데이터, 옵션) : 옵션 minSize, size, col, rotateRation, backgroundColor, figPath

#국정원 트윗 텍스트 마이닝
##1. 데이터 준비하기
twitter <- read.csv("Data/twitter.csv",
                    header = T,       #제목을 불러올 것
                    stringsAsFactors = F,    #범주형 데이터가 아닌 문자열로 인식할 것
                    fileEncoding = "UTF-8") 

twitter <- rename(twitter,      #한글로 된 변수명을 영문으로 수정
                  no = 번호,
                  id = 계정이름,
                  date = 작성일,
                  tw = 내용)

twitter$tw <- str_replace_all(twitter$tw, "\\W", " ")  #내용에 특수문자 제거
head(twitter$tw)    #바뀐 변수 확인

##2. 단어 빈도표 만들기
nouns <- extractNoun(twitter$tw)  #명사추출
wordcount <- table(unlist(nouns)) #벡터로 변환한 데이터를 빈도수 별로 분류 후 새 변수 할당
df_word <- as.data.frame(wordcount, stringsAsFactors = F) #프레임으로 변환
df_word <- rename(df_word,     #원자료의 변수명 수정 : 트윗내용과 빈도수만 가져오기
                  word = Var1, 
                  freq = Freq)

df_word <- filter(df_word, nchar(word) >= 2) #두글자 이상 단어만 추출

##3. 상위 20개 단어만 추출
top20 <-df_word %>%     
  arrange(desc(freq)) %>% 
  head(20)

##4. 단어 빈도 막대 그래프 만들기
library(ggplot2)
order <- arrange(top20, freq)$word          #빈도 순서 변수 생성
ggplot(data = top20, aes(x = word, y = freq)) +
  ylim(0, 2500) +
  geom_col() +
  coord_flip() + 
  scale_x_discrete(limit = order) +         #빈도 순서 변수 기준 막대 정렬
  geom_text(aes(label = freq), hjust = -0.2) #빈도 표시 
#hjust = 수직정렬 제어(0과 -1사이로 조정) / vjust : 수평 정렬 제어

##5. 워드 클라우드 만들기
pal <- brewer.pal(9, "Blues")[6:9] #함수 brewer.pal(maxcolor, category)
set.seed(1234)
wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 10, 
          max.words = 200,
          random.order = F,
          rot.per = .1,      #회전 단어 비율
          scale = c(8, 0.3), #폰트크기 설정 c(Max, Min)
          #글자크기가 너무 크면 글자가 사라질수 있으니 주의
          colors = pal)

#워드클라우드2 데모버젼 테스트해보기
##http://www.r-graph-gallery.com/the-wordcloud2-library/
#install.packages("wordcloud2")
library(wordcloud2)
wordcloud2(demoFreq, size=1.6)
wordcloud2(demoFreq, size = 0.7, shape = 'star')

##분석 실전 예제
#useSejongDic() 세종사전 다운
data1 <- readLines("Data/seoul_new.txt") 
    #한글이 깨져보이면 인코딩방식 변경해서 저장(UTF-8)
data2 <- sapply(data1, extractNoun, USE.NAMES = F) #True로 하면 원문장도 같이 출력됨
    #sapply함수로 여러건의 데이터를 한번에 명사만 추출
head(unlist(data2), 30) #추출된 명사를 30개만 출력

#출력된 결과에서 원하지 않는 내용 걸러내기
#gsub("변경전 글자", "변경후 글자", "원본데이터")
data3 <-gsub("\\d+", "", data3)
data3 <-gsub("서울시","", data3)
data3 <-gsub("서울", "", data3)
data3 <-gsub("요청", "", data3)
data3 <-gsub("제안", "", data3)
data3 <-gsub("-", "", data3)
data3 <-gsub(" ", "", data3)
data3 <-gsub(",", "", data3)

write(unlist(data3), "seoul_2.txt")

data4 <-read.table("seoul_2.txt")

wordcount <- table(data4)
head(sort(wordcount))
data3 <-gsub("OO", "", data3)
data3 <-gsub("개선", "", data3)
data3 <-gsub("문제", "", data3)
data3 <-gsub("관리", "", data3)
data3 <-gsub("민원", "", data3)
data3 <-gsub("이용", "", data3)

write(unlist(data4), "seoul_3.txt")
data4 <-read.table("seoul_3.txt")
View(data4)
wordcount <- table(data4)
head(sort(wordcount, decreasing = T), 20)

palete <- brewer.pal(9, "Set3")

wordcloud(names(wordcount),
          freq = wordcount,
          scale = c(5,1),
          rot.per = 0.25,
          min.freq = 1,
          randem.order = F,
          randem.color = T, colors = palete)

legend(0.3, 1, "서울시 응답소 요청사항 분석", 
       cex = 0.8, 
       fill = NA, 
       bg = "white", 
       text.col = "red", 
       text.font = 2, 
       box.col = "red")


txt <- readLines("Data/seoul_new.txt") 
place <- sapply(txt,extractNoun,USE.NAMES=F)
place   
head(unlist(place), 30)
cdata <- unlist(place) #추출한 명사 리스트를 문자열 벡터로 변환
place <- str_replace_all(cdata,"[^[:alpha:]]","")  ##한글 , 영어 외는 삭제##
data3 <- gsub(" ","", place)  #공백삭제
data3 <-gsub("OO", "", data3)
data3 <-gsub("개선", "", data3)
data3 <-gsub("문제", "", data3)
data3 <-gsub("관리", "", data3)
data3 <-gsub("민원", "", data3)
data3 <-gsub("이용", "", data3)
data3 <- Filter(function(x) {nchar(x) >= 2} ,data3) ##두글자 이상 단어만 추출##

write(data3, "seoul_3.txt")  #새 텍스트 파일 생성
data4 <-read.table("seoul_3.txt")
View(data4)

wordcount <- table(data4) #단어별 빈도표 생성
head(sort(wordcount, decreasing = T), 20)

palete <- brewer.pal(9, "Dark2")

wordcloud(names(wordcount),
          freq = wordcount,
          scale = c(5,0.3),
          rot.per = 0.25,
          min.freq = 1,
          random.order = F,
          random.color = T, colors = palete) 

legend(0.3, 1, "서울시 응답소 요청사항 분석", 
       cex = 0.8, 
       fill = NA, 
       bg = "white", 
       text.col = "red", 
       text.font = 2, 
       box.col = "red")


#1-1 미세먼지가 가장 높은 구와 낮은 구를 막대 그래프로 나타내기
dust <-read_excel("dustdata.xlsx")

##구 별로 평균 미세먼지 농도 산출
dust1 <- dust %>% 
  filter(!is.na(dust$finedust)) %>% 
  group_by(area)%>% 
  summarise(mean_dust = mean(finedust)) %>% 
  arrange(mean_dust)

#막대그래프로 표현
ggplot(data = dust1, aes(x = reorder(area, -mean_dust), y = mean_dust)) + 
  geom_col() 

max_mean_dust <- bind_rows(head(dust1, 1), tail(dust1, 1)) ##최소최대 하나로 합치기##

ggplot(data = max_mean_dust, aes(x = area, y = mean_dust, fill = area)) + 
  geom_col() +
  xlab('지역구') + 
  ylab('평균 미세먼지 농도')

#1-2 높은 구와 낮은 구를 상자 그림으로 시각화
dust3 <- dust %>% 
  filter(area == '영등포구'| area == '마포구')

View(dust3)

ggplot(data = dust3, aes(x = area, y =finedust, color = area)) + 
  geom_boxplot() + 
  xlab('지역구') + 
  ylab('미세먼지 농도')


#2.wordcloud 데이터 분석(jeju.txt)
txt <-readLines("Data/jeju.txt")
txt <-str_replace_all(txt, "\\W", " ")
head(txt)
nouns <- extractNoun(txt)
wordcount <- table(unlist(nouns))
df_jeju <-as.data.frame(wordcount, stringsAsFactors = F)

df_jeju <-rename(df_jeju,
                 word = Var1)

df_jeju <-filter(df_jeju, nchar(word) >= 2) #두 글자 이상 단어 추출

View(df_jeju)

#2.1 최다 빈도 단어의 막대그래프

top20 <-df_jeju %>% 
  arrange(desc(freq)) %>% 
  head(20)

ggplot(data = top20, aes(x = reorder(word,freq), y = freq, fill = word)) +
  geom_col() +
  coord_flip()+
  geom_text(aes(label = freq), hjust = -0.1)

#2.2 워드 클라우드로 구현

pal <- brewer.pal(9, "Set3")
set.seed(1234)
wordcloud(words = df_jeju$word,
          freq = df_jeju$freq,
          min.freq = 5,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(8, 0.3),
          colors = pal)

##correction
txt <- readLines("Data/seoul_new.txt") 
place <- sapply(txt,extractNoun,USE.NAMES=F)
place   
head(unlist(place), 30)
cdata <- unlist(place) 
place <- str_replace_all(cdata,"[^[:alpha:]]","")  # 한글 , 영어 외는 삭제
place <- gsub(" ","", place)

txt <- readLines("Data/seoul_new.txt")
txt <-readLines()
cnt_txt <-length(txt)
i <- 1
for( i in 1:cnt_txt) {
  place <-gsub((txt[i]),"",place)
}
place
place <- filter(function(x) {nchar(x) >= 2}, place)
write(unlist(place),"jeju_2.txt") 
rev <- read.table("jeju_2.txt")
nrow(rev)   
wordcount <- table(rev) 
head(sort(wordcount, decreasing=T),40)

#####2019.07.11#####
##11장 지도시각화

##11-1. 미국 주별 강력 범죄율 단계 구분도
#install.packages("ggiraphExtra")
library(ggiraphExtra)  ##1. 필요한 패키지 설치
str(USArrests)  ##2.미국 주별 범죄 데이터 준비
head(USArrests) 

##3.tibble 패키지를 이용해 state 변수 생성, 새 데이터 프레임을 crime에 할당
library(tibble)
crime <- rownames_to_column(USArrests, var = "state") 
crime$state <-tolower(crime$state)  #tolower()함수로 주 앞자리를 소문자로 수정 
str(crime)

##4.미국 주 지도 데이터 준비하기
library(ggplot2)
#install.packages("maps")  ##필요한 패키지 설치
library(maps) ##맵스 패키지에 미국 주별 위경도를 나타낸 state데이터가 있음

states_map <- map_data("state")
str(states_map)

##5.단계 구분도 만들기
#install.packages("mapproj")
library(mapproj)
ggChoropleth(data = crime,      #지도에 표현할 데이터
             aes(fill = Murder, #색깔로 표현할 변수
                 map_id = state),#지역 기준 변수
             map = states_map)    #배경이 될 지도 데이터

##6.인터랙티브 단계 구분도 만들기
ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map,
             interactive = T)

ggChoropleth(data = crime,      #지도에 표현할 데이터
             aes(fill = Rape, #색깔로 표현할 변수
                 map_id = state),#지역 기준 변수
             map = states_map,
             interactive = T)    #배경이 될 지도 데이터

##11-2. 대한민국 시도별 인구, 결핵 환자 수 단계 구분도 만들기
#1. 패키지 준비하기
#install.packages("stringi")
#install.packages("devtools")
#devtools::install_github("cardiomoon/kormaps2014")
library(stringi)
library(devtools)
library(kormaps2014)

#2.시도별 인구 데이터 준비
str(changeCode(korpop1)) #changeCode()로 한글이 깨지지 않게 변환
library(dplyr)

#3. 변수명 바꾸기
korpop1 <- rename(korpop1, 
                  pop = 총인구_명, 
                  name = 행정구역별_읍면동) #오류를 막기 위해 변수명을 영문으로 변환

#4. 대한민국 시도 지도 데이터 준비하기
str(changeCode(kormap1)) #kormap1 : 2014년 한국 행정 지도(시도별 위도, 경도 정보)

#5. 단계 구분도 만들기
ggChoropleth(data = korpop1,
             aes(fill = pop,
                 map_id = code,
                 tooltip = name),
             map = kormap1,
             interactive = T)

#대한민국 시도별 결핵 환자 수 단계 구분도 만들기
str(changeCode(tbc))
ggChoropleth(data = tbc,
             aes(fill = NewPts,
             map_id = code,
             tooltip = name),
            map = kormap1,
            interactive = T)

####r구글 지도를 활용하는 ggmap 패키지
#install.packages("ggmap")
library(ggmap)
#API키를 다음 (developers.google.com/maps/terms)
##1.구글 계정 인증 필요)
##2. 신규 프로젝트 생성
##3. google maps platform API key 활용하기
register_google(key = "AIzaSyD548iSahGuxgvGqfg8P0ytIVF6ksn4NMw")

googleAPIkey = "AIzaSyD548iSahGuxgvGqfg8P0ytIVF6ksn4NMw"
register_google(googleAPIkey) #받아온 API인증키 등록(1년 유효, 횟수 제한 있음)
gg_seoul <- get_googlemap("seoul", zoom = 6, maptype = "hybrid")
#다양한 맵타입 : terrain, satellite, hybrid, roadmap
ggmap(gg_seoul)

gg_seoul1 <- get_googlemap("seoul", zoom = 6, maptype = "terrain")
ggmap(gg_seoul1)

##register_google() : google API 등록
##get_googlemap() :  설정한 위치를 가져온다
####center : 지도의 중심좌표
####zoom : 지도의 확대크기로서 3(대륙) ~ 21(빌딩)/ 기본값은 10 (도시
####size : 지도의 가로와 세로 픽셀 크기(기본값은 640 * 640)
####gggmap() :  실제지도를 그려줍니다

##예제 1
library(stringr)
loc <- read.csv("Data/서울_강동구_공영주차장_위경도.csv", header = T)
loc
kd <- get_map("Amsa-dong", zoom = 13, maptype = "roadmap")  #지역 범위 암사동으로 설정
kor.map <- ggmap(kd) + geom_point(data = loc, aes(x = LON, y = LAT),  #해당 범위에서 포인트 설정
                                  size = 3, alpha = 0.7, color = "red")
kor.map + geom_text(data = loc, aes(x = LON, y = LAT + 0.001, label = 주차장명), size = 3)
ggsave("c:\\r_temp/kd.png", dpi = 500)   #이미지로 저장

##예제 2
loc <- read.csv("Data/지역별장애인도서관정보.csv", header = T)
kor <- get_map("seoul", zoom = 11, maptype = "roadmap") #서울 로드맵 가져오기
kor.map <- ggmap(kor) + geom_point(data = loc, aes( x = LON, y = LAT), size = 5,
                                   alpha = 0.4, color = "blue") #포인트 설정 :크기, 투명도, 색
kor.map + geom_text(data = loc, aes(x= LON, y = LAT + 0.01, label = 자치구명), size = 3) 
#포인트 위에 라벨 추가(자치구명)
ggsave("lib.png", dpi = 500) #이미지로 저장

##예제 3
library(grid)
pop <- read.csv("Data/지역별인구현황_2014_4월기준.csv", header = T)
pop
lon <- pop$LON
lat <- pop$LAT
data <- pop$총인구수
df <- data.frame(lon, lat, data)
df
map1 <- get_map("Jeonju", zoom = 7, maptype = "roadmap") 
#중앙쪽 도시를 중심으로 잡아(전주) 지역 전체 보이기
map1 <- ggmap(map1)
map1 + geom_point(aes (x = lon, y = lat, colour = "red", size = data), data = df)
ggsave("pop.png", scale = 1, width = 7, height = 4, dpi = 1000)

##예제 4 서울 지하철 2호선 위치정보
loc <- read.csv("Data/서울지하철2호선위경도정보.csv", header = T)
center <- c(mean(loc$LON), mean(loc$LAT))  #위도와 경도의 평균을 구해 중심값 설정
kor <- get_map(center, zoom = 11, maptype = "roadmap") #지도 범위 설정

kor.map <- ggmap(kor) +   #포인트 설정(각 역의 위치)
  geom_point(data = loc, aes(x = LON, y = LAT), size = 3, color = "red", alpha = 0.8)
kor.map +                 #포인트별 텍스트 추가
  geom_text(data = loc, aes( x= LON, y = LAT + 0.005, label = 역명), color = "blue", size = 3)

##예제 4-1 2호선과 3호선 동시에 출력하기
loc <- read.csv("Data/서울지하철2호선위경도정보.csv", header = T)
loc2 <- read.csv("Data/서울지하철3호선역위경도정보.csv", header = T)
center <- c(mean(loc2$LON) - 0.03, mean(loc2$LAT))
kor.map <- ggmap(kor) + 
  geom_point(data = loc, aes(x = LON, y = LAT), size = 3 , color = "green") + 
  geom_point(data = loc2, aes(LON, y = LAT), size = 3, color = "orange")
kor.map + 
  geom_text(data = loc, aes(x = LON, y = LAT + 0.005, label = 역명), size = 3) +
  geom_text(data = loc2, aes(x = LON, y = LAT + 0.005, label = 역명), size = 3)

##예제 5 leaflet
install.packages("leaflet")
library(leaflet)
m <-leaflet() %>% 
  addTiles() %>% 
  addMarkers(lng = 174.768, lat = -36.852,
             popup = "The birthplace of R")

##예제 6 강원도 음식점 지도
loc <- read.csv("Data/강원도으뜸음식점.csv", header = T)
loc1 <- rename(loc, LON = '경도', LAT = '위도')
gw <- get_map("Gangwon-do", zoom = 8, maptype = "roadmap")
gw.map <- ggmap(gw) +
  geom_point(data = loc1, aes(x = LON, y = LAT), color = "red", size = 3)
gw.map + 
  geom_text(data = loc1, aes(x = LON, y = LAT, label = 업소명), color = "blue", size = 3)


##예제 6-1 leaflet을 사용하여 표시해보기
?leaflet
name <- loc1$업소명
lon <-loc1$LON
lat <- loc1$LAT
df <- data.frame(name, lon, lat)
df
df_1 <- leaflet() %>%
  addTiles() %>% 
  addMarkers(lng = loc1$LON, lat = loc1$LAT, data = df, popup = name)
  
#####2019.07.12#####
#####12장 인터랙티브 그래프#####
##12-1 plotly 패키지로 만들기
library(plotly)
p <- ggplot(data = mpg, aes(x = displ, y = hwy, col = drv)) + #산점도 그리기
  geom_point()
ggplotly(p)           #인터랙티브 그래프 적용

p <- ggplot(data = diamonds, aes(x = cut, fill = clarity)) +  #막대그래프 그리기
  geom_bar(position = "dodge")
ggplotly(p)           #인터랙티브 그래프 적용

#예제1. 학생별과목별성적_국영수_new.csv파일로 인터랙티브 그래프 작성
grade <- read.csv("Data/학생별과목별성적_국영수_new.csv")
grade1 <- ggplot(data = grade, aes(x = 이름, y = 점수, fill = 과목 ) ) +
  geom_col()

ggplotly(grade1)

##12-2 dygraphs 패키지로 인터랙티브 시계열 그래프 만들기
#install.packages("dygraphs")
library(dygraphs)
economics <- ggplot2::economics
head(economics)
View(economics)
library(xts) #데이터가 시간 순서 속성을 지니는 xts타입으로 바꿔야 함(기본 내장패키지)
eco <- xts(economics$unemploy, order.by = economics$date) #시간에 따른 실업자수
dygraph(eco)
dygraph(eco) %>% dyRangeSelector() #날짜 범위 선택 기능 추가하기

eco1 <- xts(economics$pop, order.by = economics$date) #시간에 따른 인구수
dygraph(eco1)
dygraph(eco1) %>% dyRangeSelector()

#여러값 동시에 표현하기
eco_a <- xts(economics$psavert, order.by = economics$date)  #저축률 구하기
eco_b <- xts(economics$unemploy/1000, order.by = economics$date)  #실업자수 구하기
eco2 <- cbind(eco_a, eco_b)   #데이터 가로결합
colnames(eco2) <- c("psavert", "unemploy") #새 변수 할당
head(eco2)
dygraph(eco2) %>% dyRangeSelector()

#예제2. 항공사 승객수를 시계열 그래프로 나타내기
air <- read.csv("Data/international-airline-passengers.csv")
#install.packages("anytime")
library(anytime)

air1<- rename(air, passengers = International.airline.passengers..monthly.totals.in.thousands..Jan.49...Dec.60)
class(air1$Month)

air2<- anytime(air1$Month)

air3 <- cbind(air1, air2) %>% 
  filter(!is.na(passengers))
View(air3)

air4 <- xts(air3$passengers, order.by = air3$air2)
dygraph(air4) %>% dyRangeSelector()

#####13장 통계 분석 기법을 이용한 가설 검정#####

##단계1 가설 설정
#1 귀무가설(영가설) :  두 변수간이 관계가 없다 또는 차이가 없다 H0
#2 연구가설(대립가설) : 차이가 있다 또는 표과가 있다. H1

##단계2 유의수준(significant level)과 임계값 결정
#H1 = "신약 A는 A암 치료에 효과가 있다"
#H0 = "신약 A는 A암 치료에 효과가 없다"
#분석결과 생쥐 100마리를 대상으로 식약을 투약한 결과 검정통계량의 유의확률이 나왔다 P = 0.005
#   -> 이 때 귀무가설은 기각된다 (연구가설 채택)
#사회과학분야 임계값 : 5%미만
#의/생명분야 임계값 : 1%미만
##단계4 데이터수집(설문지 작성)
##단계5 전처리
##단계6 통계분석수행
##단계7 결과분석

##13-2 두 집단의 평균 비교
mpg <- as.data.frame(ggplot2::mpg)
library(dplyr)
mpg_diff <-mpg %>% 
  select(class, cty) %>%   #compact과 suv인 자동차만 추출
  filter(class %in% c("compact", "suv"))
head(mpg_diff)
table(mpg_diff$class)

#t-test()를 이용한 T검정
t.test(data = mpg_diff, cty ~ class, var.equal = T) #p-value < 2.2e-16 (0.05미만=통계적으로 유의)

mpg_diff2 <-mpg %>% 
  select(fl, cty) %>% 
  filter(fl %in% c("r", "p"))
table(mpg_diff2$fl)

t.test(data = mpg_diff2, cty ~fl, var.equal = T)#p-value = 0.2875 (0.05이상=우연일 확률이 28.75%)


##13-3 상관분석 - 두 변수의 관계성 분석
#두 연속 변수가 서로 관련이 있는지 검정하는 통계 분석 기법
#상관계수(correlation coefficient) : 0~1사이의 값으로 1에 가까울수록 관련성이 큼
   #양수이면 비례관계 음수이면 반비례 관계

#실업자 수와 개인 소비 지출의 상관관계
economics <-as.data.frame(ggplot2::economics)
cor.test(economics$unemploy, economics$pce)  #0.6145176 두 변수는 정비례관계

#상관행렬 히트맵 만들기 (히트맵 :  값의 크기를 색깔로 표현한 그래프)
head(mtcars)
car_cor<-cor(mtcars) #상관행렬 생성 (모든 변수와의 상관관계)
round(car_cor, 2)    #소수점 셋째자리에서 반올림해 출력

install.packages("corrplot")
library(corrplot)
corrplot(car_cor)  #상관관계가 클수록 크고 진한색(파란색 = 정비례, 빨간색=반비례)
corrplot(car_cor, method = "number")
corrplot(car_cor, method = "pie")  #더 많은 옵션은 bit.ly/2r2h2x 참고 
corrplot(car_cor, method = "color", type ="upper")

#다양한 파라미터 지정하기
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
corrplot(car_cor,
         method = "color",      #색깔로 표현
         col = col(200),        #색상 200개 선정
         type = "lower",        #왼쪽 아래 행렬만 표시
         order = "hclust",      #유사한 상관계수끼리 군집화
         addCoef.col = "black", #상관계수 색깔
         tl.col = "black",      #변수명 색깔
         tl.srt = 45,           #변수명 45도 길우림
         diag = F)              #대각 행렬 제외


#####14장 R Markdown으로 데이터 분석 보고서 만들기#####

#서울시의 구 중에서 구로구와 강남구의 미세먼지비교 및 지역별 차이 검정
library(readxl)
dust <- read_excel("dust_2018.xlsx")

#구로구와 강남구의 평균 미세먼지 농도 산출
dust1 <- dust %>% 
  filter(!is.na(finedust)) %>% 
  filter(area == '구로구'|area == '강남구') %>%  
  group_by(area) %>% 
  summarise(mean_dust = mean(finedust))
View(dust1)


#1. 상자 그림으로 시각화(극단치는 평균으로 대체)
#구로구 상자그림
dust_guro <- dust %>% 
  filter(!is.na(finedust)) %>% 
  filter(area == '구로구')

dust_guro$finedust <- ifelse(dust_guro$finedust < 5 |dust_guro$finedust >93,
                             mean(dust_guro$finedust), dust_guro$finedust)
box1 <- boxplot(dust_guro$finedust)$stats 

#강남구 상자그림
dust_gangnam <- dust %>% 
  filter(!is.na(finedust)) %>% 
  filter(area == '강남구')

dust_gangnam$finedust <- ifelse(dust_gangnam$finedust < 3 |dust_gangnam$finedust >85 ,
                                mean(dust_gangnam$finedust), dust_guro$finedust)
box2 <- boxplot(dust_gangnam$finedust)$stats

#강남구, 구로구 합치기
box3 <- cbind(box1, box2)
colnames(box3) <- c("구로구", "강남구")
View(box3)
boxplot(box3, 
        col=heat.colors(2),
        xlab='지역구',
        ylab='미세먼지 농도',
        main= '구로구와 강남구의 미세먼지비교')

#2. 두 집단의 T검정을 수행해 보세요
dust2 <- dust %>% 
    filter(!is.na(finedust)) %>% 
    filter(area == '구로구'|area == '강남구')

t.test(data = dust2, finedust ~ area, var.equal = T) #p-value = 3.598e-05
#귀무가설 기각 여부 : yes
#p-value = 3.598e-05
#강남구와 구로구의 미세먼지 농도가 간 차이가 통계적으로 유의하다

#####2019.07.15 15장 R 내장 함수, 변수타입과 데이터구조#####
##15-1 내장함수로 데이터 추출하기
exam <-read.csv("Data/csv_exam.csv")
exam[] #조건 없이 전체 데이터 출력
exam[1,] #1행 추출
exma[]
exam[exam$class == 1,] #class가 1인 행 추출
exam[exam$math >= 80,] #수학점수가 80점 이상인 행 추출
exam[exam$class ==1 & exam$math >= 50,] #1반이면서 수학점수가 50이상인 행 추출
exam[exam$english < 90 | exam$science < 50,]
exam[,1] #1열 추출
exam[,3]
exam[, "class"] #class열 추출
exam[, c("class", "math", "english")]
exam[1,3] #1행3열 추출
exam[5, "english"] #인덱스+변수명
exam[exam$math >= 50, "english"] #수학이 50점 이상인 학생들의 영어점수만 추출

#같은 기능을 하는 filter %>% 함수는 dplyr패키지를 로드해야만 작동한다.
# dplyr코드가 논리의 흐름대로 구조화 되어있어 가독성이 높고 이해가 쉽다.

#내장함수로 실행
exam$tot <- (exam$math + exam$english + exam$science)/3
aggregate(data = exam[exam$math  >=50 & exam$english >= 80,], tot ~ class, mean)

#dplyr코드로 실행
library(dplyr)
exam %>% 
  filter(math >=50 & english >=80) %>% 
  mutate(tot = (math + english + science)/3) %>% 
  group_by(class) %>% 
  summarise(mean = mean(tot))
  
help(package = base) #내장함수 목록
#bit.ly/2a9qaa #base R cheat sheet
for (i in 1:4){
  j <- i + 10
  print(j)
  }

##15-2 변수 타입
var1 <-c(1,2,3,4,5) #numeric변수 출력
var2 <- factor(c(1,2,3,4,5))  #factor변수 출력 (Levels 출력 : 값의 범주 표현) 
levels(var2) #레벨 출력 함수로 확인
var1+2 #연산 가능
var2+2 #연산 불가능
var3 <- c("a", "b", "b", "c") #문자변수 생성
var4 <- factor(c("a", "b", "b", "c")) #문자로도 factor변수 생성이 가능하다
mean(var1)
mean(var2)

#변수 타입 바꾸기
var2 <- as.numeric(var2)
mean(var2)
var2 <-as.factor(var2)
mean(var2)
class(var2)

#331p 1. 
class(mpg$drv)

#2. 
mpg$drv <- as.factor(mpg$drv)
class(mpg$drv)

#3.
levels(mpg$drv)

#날짜와 시간
Sys.Date() #대소문자 구분
Sys.time()
date() #미국식 날짜와 시간
a <- as.Date('2014-11-01') #문자를 날짜로 변환
as.Date("01-11-2014", format = "%d-%m-%Y")
#%d = 일자를 숫자로 인식
#%y = 숫자 두자리 년도
#%Y = 숫자 네자리 년도
class(b)

#날짜 연산
as.Date("2014-11-30") - as.Date("2014-11-01")
as.Date("2014-11-01") + 5

#POSIXlt : 년월일로 표시하는 리스트형 날짜
#POSIXct : 초 단위까지 표시하는 (회귀분석등에 많이 사용됨)
as.Date("2014-11-01 20:00:00") - as.Date("2014-11-01 18:30:30")
as.POSIXct("2014-11-01 20:00:00") - as.POSIXct("2014-11-01 18:30:30")
#install.packages("lubridate")
library(lubridate)
date <-now()
year(date) #년도만 출력
month(date, label = T) #영문으로 월 출력
month(date, label = T) #숫자로 월 출력하기
day(date)
date <- date - days(2) #2일 전 날짜 출력
date + years(1) #1년 추가하기
wday(date, label = T) #영문으로 요일 출력

##15-3 데이터 구조
#1.vector : 한가지 변수 타입으로 구성
a <-1
a

#2.date frame : 행과 열로 구성된 2차원 데이터 구조/여러 변수 타입으로 구성 가능
x1 <- data.frame(var1 = c(1,2,3),
                 var2 = c("a", "b", "c"))
class(x1)

#3.matrix : 행과 열로 구성된 2차원 데이터 구조/한가지 타입으로만 구성
#matrix(변수명, nrow = 행 개수, ncol = 열 개수)
x <- c(1,2,3,4,5,6)
matrix(x, nrow = 2, ncol = 3) #원소를 열 ->순으로 배치
matrix(x, nrow = 3, ncol = 2, byrow = T) #byrow = 원소를 행->열 순으로 배치

x2 <- matrix(c(1:12), ncol = 2)
class(x2)

#4.array : 2차원 이상으로 구성된 매트릭스/한가지 타입으로만 구성
#arry(변수명, dim = c(행 수, 열 수, 차원 수))
x3 <-array(1:20, dim = c(2,5,2))
x3 #[행, 열, 차원]

#5.list
#모든 데이터 구조를 포함하는 데이터 구조
# 여러 데이터 구조를 합히 하나의 리스트로 구성 가능
x4 <- list(f1 = a,  #벡터
           f2 = x1, #데이터 프레임
           f3 = x2, #매트릭스
           f4 = x3) #어레이

#리스트 활용 : 함수의 결과물에서 특정 값을 추출 가능
mpg <- ggplot2::mpg
x <- boxplot(mpg$cty) 
x$stats[,1] #요약통계량 추출
x$stats[,1][3] #중앙값
x$stats[,1][2] #1분위수 추출
x$conf #값의 95% 신뢰구간
x$n   #원소 총 갯수
x$out #이상치 (outlier)
x$group #이상치가 속한 그룹
x$names  #각 그룹의 이름을 저장한 벡터

#파일 불러오기
fruits2 <-read.table("Data/fruits_2.txt")
fruits2 <-read.table("Data/fruits_2.txt", skip = 2) #건너 뛸 줄 수를 지정(코멘트+첫줄 건너뜀)
fruits2 <-read.table("Data/fruits_2.txt", nrows = 2) #첫 두줄만 불러오기
fruits3 <-read.table("Data/fruits_2.txt", header = T, nrows = 2) #제목+ 첫 두줄
fruits3 <-read.table("Data/fruits_2.txt", header = F, skip = 2, nrows = 2)

#행,열에 제목이 없는 경우 첫 줄의 데이터가 제목이 되어 사라질 수 있으므로 header = F를 사용해 없애준다
#라벨명을 수동으로 지정할 경우
label <- c('NO', 'NAME', 'PRICE', 'QTY')
fruits4 <-read.table("Data/fruits_2.txt", header = F, col.names = label)

#read.csv와 readLines의 차이
txt1 <- read.csv("Data/csv_test.txt") #행열에 맞춰서 출력된다
txt1
txt2 <- readLines("Data/csv_test.txt")  #행 단위의 내용이 한줄에 출력된다
txt2
txt3 <- read.table("Data/csv_test.txt", sep =",", header = T)  
#sep(구분자)로 컬럼 구분하고 header=T 해주면 csv 파일과 동일한 출력물
txt3

#다양한 파일 저장법
readLines('write_test.txt')
write()
write.table(txt1, "table_test2.txt")
txt2 <- read.table("table_test2.txt", head = T)

write.table(txt1,"csv_text2.csv")#csv파일을 저장할 때는 .table을 붙이지 않으면 에러발생
txt2 <- read.csv("csv_test2.csv") 

#while 반복문
no <- 0
while(no < 5){
  print(no)
  no<- no+1;}

no <- 3
while(no <100){
  print(no)
  no <- no + 3
}
?`dplyr-package`

x <- 1
while(x<5){
  x <-x+1; if(x==4) break;print(x);} #4를 만나면 멈춰라

while(x<3){
  x <- x+1; if(x==2) next; print(x)}  #2를 만나면 건너뛰어라

while(x<5){
  x <- x+1; if(x==4) next; print(x)} #4를 만나면 건너뛰어라

#for 반복문
for (i in 1:3){
  print(i)
}

for (i in 1:4){
  j <- i + 10
  print(j)
}

sum <- 0
for (i in 1:10){
  sum <- sum + i
  print(sum)
}

#예제1.서대문구에 치킨집이 많은 동은?
library(readxl)
ck <-read_excel("Data/chicken.xlsx")
head(ck)
addr <- substr(ck$소재지전체주소, 11, 16)
head(addr)
addr_num <- gsub("[0-9]", "", addr)  #숫자제거거
addr_trim <-gsub(" ", "", addr_num)  #공백제거
head(addr_trim) #동이름만 남김
?gsub

library(dplyr)
#table함수를 이용해서 숫자 세기, 변수가 한개일때 도수분포표를 만들어줌
addr_count <-addr_trim %>% 
  table() %>% 
  data.frame()

#install.packages("treemap") #트리맵 패키지 설치
library(treemap)
#treemap(데이터, index =열제목, vSize = 크기를 이용할 열 제목, vColor, title)
treemap(addr_count, index=".", vSize = "Freq", title = "서대문구 동별 치킨집 분포")

library(RColorBrewer)
cafe <- read_excel("Data/gangnam_coffee.xlsx")
head(cafe)
cafe1 <- substr(cafe$소재지전체주소, 11, 13)
cafe_count <-cafe1 %>% 
  table() %>% 
  data.frame()
treemap(
  cafe_count, 
  index=".", 
  vSize = "Freq", 
  title = "강남구 동별 까페 분포", 
  palette = brewer.pal(n=8, "RdYlGn"))

#예제2.
library(devtools)
library(ggmap)
library(ggplot2)
#install_github("dkahle/ggamp")

googleAPIkey = "AIzaSyD548iSahGuxgvGqfg8P0ytIVF6ksn4NMw"
register_google(googleAPIkey)
#한글 검색을 위해 utf8로 변환한 후 위도와 경도 데이터를 geo_code에 할당
geo_code <- enc2utf8("대전역") %>%geocode()
geo_data <- as.numeric(geo_code) #리스트를 숫자로 변환하여 geo_data에 할당
geo_data
#대전역의 위치정보
get_googlemap(center = geo_data, maptype = "roadmap",
              zoom = 13) %>% ggmap()+
  geom_point(data=geo_code,aes(x= geo_code$lon, y = geo_code$lat))

#1.
metro <- read.csv("Data/지하철역별_주소_전화번호.csv")
class(metro$구주소) #데이터타입 : factor
View(metro)

#2.geocode()함수로 station_code값을 위도와 경도로 변환
#(geocode는 데이터타입이 문자타입이어야 작동한다)
geo_code <- enc2utf8(as.character(metro$구주소)) %>% geocode() 
geo_data <- as.numeric(geo_code) #받은 위도와 경도를 숫자형으로 변환

#3. 1과 2를 합친 후  station_final 변수에에 할당
station_final <-cbind(metro, geo_code)
View(station_final)

#4.강남구 지도 정보를 가져와 gangnam_map에 저장
gangnam_map <- get_googlemap("Gangnam-gu",zoom = 7, maptype = "roadmap")

#5.산점도를 이용한 지하철역 위치 표시 및 역명 표시
seoul_metro <- get_map(center = "Gangnam-gu", maptype = "roadmap",
              zoom = 13) %>% ggmap() +
  geom_point(data=station_final,
             aes(x= station_final$lon, y = station_final$lat, colour = station_final$호선), 
             size = 3) +  #호선 색 구분
  geom_text(data=station_final,
            aes(x= station_final$lon, y = station_final$lat+0.003, label = 역명 ),
            color = "red", size = 3)
library(plotly)
ggplotly(seoul_metro)  #인터랙티브로 변환


#####2019.07.16###### 
##아파트 실거래가와 지하철 노선도의 관계 분석
apart <- read.csv("Data/아파트_실거래가.csv")
apart$전용면적 = round(apart$전용면적) #전용면적 반올림
head(apart)
count(apart, 전용면적) %>% #전용면적 별 아파트 수를 내림차순으로 정렬
  arrange(desc(n))

apart_85 <- subset(apart, 전용면적 == "85")
apart_85$거래금액 <- gsub(",", "", apart_85$거래금액) #컴마 없애기
head(apart_85)

#거래금액을 정수형으로 변환하여 단지명 별 평균을 구함
apart_85_cost <- aggregate(as.integer(거래금액) ~ 단지명, #R 내장함수로 범주별 요약통계 산출
                           apart_85, mean)

apart_85_cost <- rename(apart_85_cost, 
                        "거래금액" = "as.integer(거래금액)")
head(apart_85_cost)

#단지명이 중복된 행 제거
apart_85 <- apart_85[!duplicated(apart_85$단지명),]

#"단지명"을 기준으로 합치기
apart_85 <-left_join(apart_85, apart_85_cost, by = "단지명") #거래금액이 거래금액.y로 합쳐짐

#단지명, 시군구, 번지, 전용면적, 거래금액.y만 추출하고 저장
apart_85 <- apart_85 %>% 
  select("단지명", "시군구", "번지", "전용면적", "거래금액.y")
  

apart_85 <-rename(apart_85, "거래금액"="거래금액.y")
head(apart_85)

#시군구와 번지 열을 합친 후 apart_address에 저장
apart_address <- paste(apart_85$"시군구", apart_85$"번지")

#시군구와 번지 열을 합친 후 데이터 프레임 구조로 저장
apart_address <- paste(apart_85$"시군구", apart_85$"번지") %>% 
  data.frame()

#"."을 주소로 변경하여 저장
apart_address <- rename(apart_address, "주소" = ".")
View(apart_address)

#아파트 주소를 위-경도로 변환하여 appart_address_code에 저장
apart_address_code <- as.character(appart_address$주소) %>% 
  enc2utf8() %>% geocode
View(apart_address_code)

#데이터세트를 합친 후 일부 열만 apart_code_final에 저장
apart_code_final <- cbind(apart_85, apart_address, apart_address_code) %>% 
  select("단지명", "전용면적","거래금액", "주소", lon, lat)

#홍대입구역
hongdae_map <- get_googlemap("hongdae station", maptype = "roadmap", zoom = 15)

#홍대입구역 지도에 지하철 정보 및 아파트 정보 일괄 표시
apart_hongdae <- ggmap(hongdae_map) + 
  geom_point(data = station_final, aes(x= lon, y = lat), colour = "red", size = 4, alpha = 0.5) +
  geom_text(data = station_final, aes(label = 역명, vjust = -1), colour = "red") +
  geom_point(data = apart_code_final, aes(x= lon, y = lat),size = 4, colour = "blue" ,  alpha = 0.5) +
  geom_text(data = apart_code_final,aes(label = 단지명, vjust = -1), colour = "blue" ) + 
  geom_text(data = apart_code_final,aes(label = 거래금액, vjust = 1), colour = "blue" )

#leaflet으로 지도표시
library(leaflet)
leaflet(data = apart_code_final) %>% 
  addProviderTiles(providers$OpenStreetMap) %>% 
  addMarkers(lng = ~lon, lat = ~lat, clusterOptions = markerClusterOptions(),
             popup = ~as.character(paste0("<strong>", paste0("아파트명:", 단지명),"</strong><br>",
                                          "*전용면적: ",전용면적,"<br>",
                                          "*거래금액: ",거래금액,"<br>",
                                          "*주소: ",주소,"<br>")))


###Reshape2 패키지
#melt()함수 : 가로로된 데이터를 세로로 변환
#melt(데이터세트, id.var = "기준열", measure.vars = "변환 열")
#install.packages("reshape2")
library(reshape2)
head(airquality)
names(airquality) <- tolower(names(airquality))
melt_test <- melt(airquality)
head(melt_test)
tail(melt_test)
View(melt_test)

#월과 바람에 따른 오존확인하기
melt_test2 <- melt(airquality, id.vars = c("month", "wind"),
                  measure.vars = "ozone")
View(melt_test2)

#cast()함수 : 행을 열로, 세로로된 긴 형태의 데이터를 가로로 길게 전환하는 기능
#acast() : 
#dcast() : dcast(데이터세트, 기준 열 ~ 변환열)
aq_melt <- melt(airquality, id = c("month","day"), na.rm = F)
head(aq_melt)
melt_test <- melt(airquality, id = "month") #달을 기준으로 변수들이 모두 variable 열에 한줄로 정렬됨
View(melt_test)

acast(aq_melt, month  ~ variable, mean)
dcast(aq_melt, month ~ variable, mean)

dcast_test <-dcast(airquality, wind ~ month, mean) #wind를 기준으로 
View(dcast_test)


#
diet_effect <- read.csv("Data/diet_effect.csv")
#중도포기자 제외
diet_effect2 <- diet_effect %>% 
  filter(after!=999)
#빈도수 확인
length(diet_effect2$before)
lenth(diet_effect2$after)
boxplot(diet_effect2$before, diet_effect2$after, col = heat.colors(3, alpha = 0.5))
t.test(diet_effect2$before, diet_effect2$after)

#분포모양 검정 : 두집단의 분포 모양 일치 여부검정
var.test()

#워드클라우드 실습

science <- readLines("Data/science.txt", encoding = "UTF-8")
science<- str_replace_all(science$V1, "\\W", "")
View(science)

s_word <- strsplit(science,";")
View(s_word)
wordcount <-table(unlist(s_word))
s_word <- as.data.frame(wordcount, stringsAsFactors = F)
s_word <- rename(s_word,
                 word = Var1,
                 freq = Freq)

s_word <- filter(s_word, nchar(word)>=2)
top100 <- s_word %>% 
  arrange(desc(freq)) %>% 
  head(100)


pal <- brewer.pal(8, "random-dark")

#폰트바꾸기
#install.packages("extrafont")
library(extrafont)
font_import()
loadfonts(device="win")
windowsFonts(baedal=windowsFont("배달의민족 주아"))

View(s_word)
set.seed(1234)
wordcloud(words = s_word$word,
          freq = s_word$freq,
          min.freq = 2,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(5, 0.5),
          col = pal,
          family = "baedal")

#wordcloud2 패키지로 해보기
#install.packages("wordcloud2")
library(wordcloud2)
wordcloud2(top100, 
           shape = "triangle-forward",
           size = 0.3,
           col = "random-light",
           backgroundColor = "black")


#관악구 아파트 실거래가
gw_apart <- read_excel("아파트(매매)_실거래가_20190716172654.xlsx",skip = 15)
summary(gw_apart) 
gw_apart$`전용면적(㎡)` = round(as.numeric(gw_apart$`전용면적(㎡)`)) #면적 반올림
gw_apart$`거래금액(만원)` <- gsub(",", "",as.numeric(gw_apart$`거래금액(만원)`)) #컴마 없애기

gw_apart2 <- gw_apart %>% 
  filter(`전용면적(㎡)`>= 85)
View(gw_apart2)

gw_apart_add1 <- paste(gw_apart2$"시군구", gw_apart2$"번지") #주소 만들기
View(gw_apart_add1)
gw_apart_add <- as.character(gw_apart2$주소) %>%  #주소를 바탕으로 위-경도 가져오기
  enc2utf8() %>% geocode

View(gw_apart_add)

gw_apart_final <- cbind(gw_apart2,gw_apart_add1, gw_apart_add) 

gw_map <- get_googlemap("Gwanak-gu", maptype = "roadmap", zoom = 15)
leaflet(data = gw_apart_final) %>% 
  addProviderTiles(providers$OpenStreetMap) %>% 
  addMarkers(lng = ~lon, lat = ~lat, clusterOptions = markerClusterOptions(),
             popup = ~as.character(paste0()))
