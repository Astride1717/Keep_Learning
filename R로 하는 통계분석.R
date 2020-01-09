#########1강#####

#미국의 한 신문사 홈페이지에서 하루치 클릭 데이터 분석
#목적 : 온라인 광고효과 분석을 위한 CTR(click-through-rate)

data1 <- read.csv(url("http://stat.columbia.edu/~rachel/datasets/nyt1.csv"))
head(data1)

#연령별 카테고리 생성
data1$agecat <- cut(data1$Age, c(-Inf, 0,18,24,34,44,54,64, Inf))
summary(data1)
str(data1)

siterange <- function(x){
  c(length(x), min(x), mean(x), max(x))
}

#install.packages("doBy")  #EDA용 유틸리티 함수
library("doBy")
summaryBy(Age ~ agecat, data= data1, Fun = siterange)
siterange(data1$Age)
summaryBy(Gender+Signed_In+Impressions+Clicks ~ agecat, data = data1)

#install.packages("ggplot2")
install.packages("dplyr")
library("ggplot2")
ggplot(data1, aes(x= Impressions, fill = agecat)) + geom_histogram(binwidth = 1)
ggplot(data1, aes(x = agecat, y = Impressions, fill = agecat)) + geom_boxplot()

data1$hasimps <- cut(data1$Impressions, c(-Inf, 0, Inf))
summaryBy(Clicks ~ hasimps, data = data1, FUN = siterange)
ggplot(subset(data1, Impressions >0), aes(x = Clicks/Impressions, color = agecat))+geom_density()
ggplot(subset(data1, Clicks>0), aes(x = agecat, color = agecat))+geom_density()

#노출이 있는 데이터/없는 데이터/ 클릭한 적이 있는 사람 
data1$scode[data1$Impressions ==0] <- "NoImps"
data1$scode[data1$Impressions >0] <- "Imps"
data1$scode[data1$Clicks >0] <- "Clicks"

head(data1)

#정성적 데이터: 범주형 데이터
#install.packages("MASS")
library(MASS)
painters  #18세기 화가에 대한 평가표
painters$School
help(painters)

#학파별로 분포 보기
school <-painters$School
school.freq <-table(school)  
school.freq

cbind(school.freq)

school.relfreq <- school.freq/nrow(painters)
school.relfreq

barplot(school.freq)
colors <- c("red", "yellow", "green", "violet", "orange", "blue", "pink", "cyan")
barplot(school.freq, col = colors)

pie(school.freq, col = colors)

c_school <- school == "C"
c_painters <- painters[c_school,]
mean(c_painters$Composition)
tapply(painters$Composition, painters$School, mean)

#정량적 데이터 :  연속형 데이터, 숫자로 이루어져 계산이 가능하다
head(faithful) #옐로스톤 국립공원의 Old Faithful geyser 관측자료
duration <- faithful$eruptions
range(duration)

#구간 나누기
breaks <- seq(1.5, 5.5, by = 0.5)
breaks

duration.cut <- cut(duration, breaks, right = FALSE)
duration.freq <- table(duration.cut)
duration.freq
cbind(duration.freq)

hist(duration, right = FALSE)
hist(duration, right = FALSE, col = colors, main = "Old Faith Eruptions", xlab = "Duration minutes")

#구간별 상대빈도수
duration.cut
duration.relfreq <- duration.freq/nrow(faithful)
duration.relfreq

#Enhanced solution
old <- options(digits = 1)
duration.relfreq
cbind(duration.freq, duration.relfreq)

#누적도수
duration.cumfreq <- cumsum(duration.freq)
cbind(duration.cumfreq)

#누적도수분포표
cumfreq0 <- c(0, cumsum(duration.freq))
plot(breaks, cumfreq0, main = "Old Faithful Eruptions",
    xlab = "Duration minutes",
    ylab = "Cumulative eruptions")
#선추가
lines(breaks, cumfreq0)

#상대누적도수분포
duration.cumrelfreq <- duration.cumfreq/nrow(faithful)
duration.cumrelfreq

#Enhanced solution
old <-options(digits = 2)
duration.cumrelfreq
options(old)
old <-options(digits = 2)
cbind(duration.cumfreq0, duration.cumrelfreq)

#상대누적도수분포표
duration.cumrelfreq0 <- duration.cumfreq / nrow(faithful)
cumrelfreq0 <- c(0, duration.cumrelfreq, )
plot(breaks, cumrelfreq0, main = "Old Faithful Eruptions",
     xlab = "Duration minutes",
     ylab = "Cumulative eruptions proportion")
lines(breaks, cumrelfreq0)

Fn <- ecdf(duration)
plot(Fn,main = "Old Faithful Eruptions",
     xlab = "Duration minutes",
     ylab = "Cumulative eruptions proportion" )

#Stem and Leaf Plot : 숫자의 자리수를 기준으로 그래프 생성
stem(duration)

#duration과 waiting의 상관관계를 산포도로 분석
waiting <- faithful$waiting

plot(duration, waiting, xlab = "Duration minutes",
     ylab = "Time waited")
abline(lm(waiting ~ duration))  #선형모델lm을 이용해 상관관계선 생성


######수학함수######
#로그함수
x <- seq(0, 10, .1)
windows(7, 4)
par(mfrow = c(1,2)) #한 화면에 두개의 그래프를 나란히 보기 지정
y <- exp(x)
plot(y~x, type = "l", main = "Exponential")  #2의 x승
y <- log(x)
plot( y ~ x,type = "l", main = "Logarithmic")  #로그 x값

#삼각함수
windows(7,7)
par(mfrow = c(2,2)) #한 화면에 4개의 그래프 보기
x <- seq(0, 2*pi, 2*pi/100)
y1 <- cos(x)
y2 <- sin(x)
y3 <- tan(x)

plot(y1 ~ x, type = "l", main = "Cosine")
plot(y2 ~ x, type = "l", main = "Sine")
plot(y3 ~ x, type = "l", ylim = c(-3, 3), main = "Tangent")

#멱법칙(power laws, 곱셈연속)
x< - seq(0,1, 0.01); x
par(mfrow = c(2,2))
y <- x^0.5 #루트 x값
plot(x, y, type = "l", main = "0 < b < 1")

y <- x
plot(x, y, type = "l", main = " b = 1" )

y<- x^2  #x제곱
plot(x, y,  type = "l", main = "b > 1")

y<- 1/x
plot(x, y,  type = "l", main = "b < 0")


#다항식
x <- seq(0, 10, .1)
y1 <- 2 + 5*x - 0.2*x^2
y2 <- 2 + 5*x - 0.4*x^2
y3 <- 2 + 4* -0.6*x^2 + 0.4*x^3
y4 <- 2 + 4*x + 2*x^2 - 0.6*x^3 + 0.04*x^4
par(mfrow = c(2,2))
plot(x, y1, type = "l", ylab = "y", main = "체감")
plot(x, y2, type = "l", ylab = "y", main = "봉우리(낙타형)")
plot(x, y3, type = "l", ylab = "y", main = "변곡점")
plot(x, y4,  type = "l", ylab = "y", main = "극대값")

#감마함수 : 모든 자연수에 정의되는 계승함수를 인반화한 함수
par(mfrow = c(1,1))
t <- seq(0.2, 4, .01)
plot(t, gamma(t), type = "l")
abline(h = 1, lty = 2)


#####2강#####

#mean
options(digits = 5)
mean(duration)

#median
median(duration)

#quartile :옵션 없이 수행하면 1 ~ 4분위값 출력
quantile(duration)

#percentile을 지정할 수 있다 : faithful 데이터의 백분률 기준 32, 57, 98%에 해당하는 eruption duration?
quantile(duration, c(.32, .57, .98))

#quantile : 백분률로 위치값을 지정해 출력
#quartile : 쿼터 25%에 해당되는 값 제시
#quintile : 10%, 20% ~ 100%까지 10%단위로 값 출력


#IQR(interquartile range) : 사분범위 = 1Q와 3Q의 범위(upper qurtile - lower quartile)
#eruption waiting period의 사분범위 구하기
IQR(duration)

#box plot : quartile을 기준으로 한 그래픽 표현
#평균이 아닌 중앙값((Q2)을 표시함으로서 이상치들로부터 영향을 받지 않는다. -> robust stat
boxplot(duration, horizontal = TRUE)

#variance : 평균을 중심으로 퍼져 있는 정도(일변량)
var(duration)

#standar deviation : 분산의 제곱근
sd(duration)

#covariance : 두 변수가 얼마나 밀접한 관계를 가르지는가를 측정(이변량)
#양의 공분산 = positive linear relationship
#음의 공분산 = negative linear relationship
#eruption duration 과 waiting 시간 사이의 공분산 구하기
cov(duration, waiting)

#corelation coefficient : 두 변수가 얼마나 밀접한 관계를 가르지는가를 측정(1, 0, -1사이의 값을 갖는다 )
#편차값으로 나누어주었기 때문에 두 변수 사이의 단위의 차이를 상쇄한다.
#eruption duration과 waiting 시간 사이의 상관계수 구하기
cor(duration, waiting)

#central moment 중심적률 : 물리학에서 나온 개념
#2nd central moment = variance
#eruption duration의 3rd 중심적률 구하기
#install.packages("e1071")
library(e1071)
moment(duration, order = 3, central = TRUE)

#확률 모멘트(적률)의 종류 : 확률분포상의 임의 점에 가중치를 적용해서 일반화시킨 통계량 표현
#원점적률(moment about origin) : 원점을 중심으로 한 k차 모멘트
#중심적률(central moment) : 평균값을 중심으로 하는 k차 모멘트
#그 외에 계승적률, 결합 모멘트 등이 있다.


#skewness 왜도 : 대칭도(a measure of symmetry)
#negative skewness = (mean < median) ; 분포는 left-skewed
#positive skewness = (mean > median) ; 분포는 right-skewed
duration = faithful$eruptions
library(e1071)
skewness(duration)  #left-skewed로 중앙값이 평균보다 크기 때문에 (mean - median)은 음수가 나오게 된다.

#kurtosis 첨도
#neative kurtosis -> flat 분포
#positive kurtosis -> a peaked 분포
#zero kurtosis -> 정규분포
library(e1071)
kurtosis(duration)  #정규분포와 유사하나 약간 flat한 분포임을 알 수 있다.


#확률분포 : 확률변수(random variable)이 분포되는 형태 (이론적 확률분포에 적용하여 분석)
#예 :  동전 던지기(이항분포), 주사위 던지기 -> 여러차례 반복하며 정규분포에 유사해짐.

#Sinomial Dist. 이항분포 : 성공 또는 실패 결과만 가지는 n개의 독립시행의 결과
#베르누이 분포를 여러번 반복했을 때의 확률을 계산한 것
#12문항의 5지선다형 시험에서 4번 또는 그 이하의 성공 확률 구하기
#딱 4개만 맞을 확률
dbinom(4, size = 12, prob = 0.2)

#4개 이하만 맞을 확률

dbinom(0, size = 12, prob = 0.2) + 
  dbinom(1, size = 12, prob = 0.2) +
  dbinom(2, size = 12, prob = 0.2) +
  dbinom(3, size = 12, prob = 0.2) +
  dbinom(4, size = 12, prob = 0.2)

#pbinom(누적확률)로 동일한 값 구하기
pbinom(4, size = 12, prob = 0.2)

#Possion Dist.: 일정 시간동안 독립한 사건이 발생할 확률의 분포 (rare events)
#평균 12대의 자동차/분일 경우 1분동안 17대 이상 통과할 확률 구하기
ppois(16, lambda = 12)  #16대 이상
ppois(16, lambda = 12, lower = FALSE)  #16대 미만

#Continuous Dist. 연속균등분포 : a와 b구간에서 일정한 확률분포
#일정 구간에서 난수생성을 할 때 사용된다
#1부터 3사이의 10개의 난수 생성하기
runif(10, min = 1, max = 3)

#Exponential Dist. 지수분포 : Poisson분포의 역의 개념으로 무작위로 발생하는 독립 사건의 발생시간
#슈퍼마켓의 평균 checkout시간 = 3분이라면 2분이내에 checkout 할 확률?
pexp(2, rate = 1/3) 

#Normal Dist. 정규분포 : 좌우대칭, 중심극한정리(반복시행하면 정규분포에 근사)
#시험점수가 정규분포인데 평균=77점, 표준편차가 = 15.2점이라면 84점 이상 받는 학생의 비율은?
pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE) #좌측단, 우측단 값 미포함 설정

#Chi-squared Dist. 카이제곱 분포 : X1, X2...Xm가 m번의 독립 확률변수이고 표준정규분포를 가진다면 
#다음 변량은 X^2분포를 따른다. (단,자유도 = m) = 자유롭게 선택할 수 있는 변수의 개수
#자유도 7의 X^2 분포에서 95th분위의 값 구하기
qchisq(.95, df = 7)

#Student t분포 : 각각의 확률변수 z는 표준정규분포를, ㅍsms wkdbeh = mdml x^2분포를 따르고 이들이 서로 독립이라면
#다음 quantity는 자유도 m의 student t분포를 따른다
qt(c(.025, .975), df = 5)

#F분포: 서로 독립인v1, v2가 각각 자유도 m1, m2로 x^2분포를 한다면 다음은 F분포이다.
#자유도가 (5, 2)인 X^2 분포의 95th 백분위 수 구하기 
qf(.95, df1 = 5, df2 = 2


#II. 기술통계와 EDA
#II-1 일변량 데이터 : 범주형, 수치형(=단변량 데이터: 데이터셋이 하나의 변수로 구성)
#II-1-2 범주형 데이터 : table(), barplot(), pie(), dotchart(), factor()
#install.packages("UsingR")
library(UsingR)
central.park.cloud
table(central.park.cloud)

beer = scan()
beer
beer <- c(3,4,1,1,3,4,3,3,1,3,2,1,2,1,2,3,2,3,1,1,1,1,4,3,1)
barplot(beer)
barplot(table(beer), xlab = 'beer', ylab = 'frequency')

sales <- c(45,44,46)
names(sales) <- c("John", "Jack", "Suzy")
par(mfrow = c(1,2))
barplot(sales, main = "Sales", ylab = "Thousands")

#Time Series Data
par(mfrow = c(1,1))
head(central.park)
barplot(central.park$MAX, names.arg = 1:31, xlab = "day", ylab = "max. temp.")

our.data <- c(1,2,2,5); names(our.data) = 1:4
bp <- barplot(our.data)
text(bp, our.data, labels = our.data, pos = 1)  #text()로 바에 레이블 지정

dotchart(sales, xlab = "Amount of sales")

1:5  #연속형 데이터
factor(1:5) #1~ 5번 범주형 데이터 생성
mean(factor(1:5))
letters[1:5] #a ~ e까지 범주형 문자열 생성
factor(letters[1:5]) #문자열이 아닌 factor타입으로 생성

#II-1-2. 수치형 데이터 : stem(), stripchart(), mean(), median(), mode()
x <- c(2,3,16,23,14,12,4,13,2,0,0,0,0,6,28,31,14,4,8,2,5)
stem(x)

head(kid.weights)
attach(kid.weights) #search path에 위치값을 별도로 지정하지 않고도 활용 가능
x <- height[48 <= age & age < 60]
stripchart(x, method = "stack", xlab = "x", pch = 1, offset = 1, cex = 2) #pch = point character, cex = character expansion
detach(kid.weights)  #attach를 해줬으면 작업 후 detach를 해주는 것이 좋다.

x <- c(2,3,16,23,14,12,4,13,2,0,0,0,0,6,28,31,14,4,8,2,5)
sum(x)/length(x)
mean(x)

bar <- c(50, 60, 100, 75, 200); bar
bar.with.gates <- c(bar, 50000); bar.with.gates
mean(bar)
median(bar)
#평균은 outlier의 영향을 크게 받지만 중앙값은 그렇지 않다. 이상치가 많을 경우 중앙값이 유용
median(bar.with.gates)

head(cfb)
income <- cfb$INCOME
mean(income)  
median(income) #몇몇 소수의 사람이 평균을 많이 끌어올렸음을 알 수 있다.
#상하위 각 20%를 제외한 60%의 평균값 구하면 
mean(income, trim = .2) #20~25배분위 사람들이 75~80보다 소득수준을 끌어올리는 효과가 있었음을 알 수 있다. 

#평균소득 63000 이하의 소득을 버는 사람이 전체의 70.5%임을 알 수 있다.
sum(income <= mean(income))/length(income)*100

x <- c(72, 75, 84, 84, 9, 94, 55, 62)
table(x)
which(table(x) == max(table(x))) #주어진 값이 몇번째에 위치하는지 반환
which.max(table(x))

diff(range(x)) #최대값부터 최소값 차이의 간격

test.scores <- c(80, 85, 75, 77, 87, 82, 88)
test.scores.b <- c(100, 90, 50, 57, 82, 100, 86)
mean(test.scores)
mean(test.scores.b)
n <- length(test.scores)

var(test.scores)
var(test.scores.b) #분산값이 커지지만
sd(test.scores) #표준편차는 단위수의 영향을 받지 않는다
sd(test.scores.b)


x <- 0:5
length(x)
sum(sort(x)[3:4])/2
median(x)
quantile(x, .25)
quantile(x, c(.25, .5, .75))

#Executive Pay 데이터(만불 단위)
head(exec.pay) 
stem(exec.pay)
sum(exec.pay > 100)/length(exec.pay)
quantile(exec.pay, .99)

IQR(exec.pay)
sd(exec.pay)
summary(exec.pay)

fivenum(exec.pay) # = IQR의 변량


#II-1-3. 분포의 모습 : hist(), truehist(), plot(), rug(), cut(), density()
head(faithful)
attach(faithful)
hist(waiting)
par(mfrow = c(1,2))
hist(waiting, breaks = 10)
hist(waiting, beraks = seq(43, 108, length = 10))
hist(waiting, prob = TRUE) #확률밀도함수 (총 합이 1)

#OBP data (2000년 미국 메이저리그)

hist(OBP, breaks = "scott", prob = TRUE, col = gray(.9), main = "My histogram of the OBP dataset")

bins <- seq(42, 109, by = 10)
freqs <- table(cut(waiting, bins)); freqs #양극값 포함여부 설정
y.pts <- c(0, freqs, 0)  
x.pts <- seq(37, 107, by = 10)
plot(x.pts, y.pts, type = "l")  
rug(waiting)

attach(faithful)
hist(OBP, breaks = "scott", prob = TRUE, main = ", ylab=")
lines(density(waiting))
detach(faithful)

#MASS패키지에 포함된 별 관측 데이터 로딩
library(MASS)
head(galaxies)
par(mfrow = c(1,1))
hist(galaxies, prob = TRUE, main = ", ylab = ")
lines(density(galaxies))

hist(OBP, breaks = "scott", prob = TRUE, col = gray(.9))
lines(density(OBP))

#
head(cfb)
attach(cfb)
summary(VEHIC)

#전체 소득수준 분포
hist(VEHIC, breaks = 'scott', prob = TRUE)
lines(density(VEHIC)) #확률밀도함수 라인 추가
detach(cfb)

#미국내 탑 79개 영화 매출 총액
attach(alltime.movies)
boxplot(Gross, ylab = "All-time gross sales")  #이상치 5개(초대박 영화)
f <-fivenum(Gross);f
text(rep(1,3,5), f, labels = c("minimum", "lower hinge", "median", "upper hinge", "maximum"))

the.names <- rownames(alltime.movies)
the.names
the.names[Gross > f[4]+1.5*(f[4] - f[2])] #중간값 IQR의 1.5배 이상인 영화


#II-2. 이변량 데이터 bivariate data(두개의 변수 x, y)
#II-2-1. pairs of categorical variables:cbind(), rbind(), matrix(), rownames(), colnames(), table(),apply(), options(), barplot(), prop.table()

rbind(c(56, 8), c(2, 16))
cbind(c(56,2), c(8, 16))
x1<- matrix(c(56,2, 8, 16), nrow = 2); x
  
head(grades)  
attach(grades)  
table(prev, grade)

#이원분할표의 주변분포표
x <- x1
margin.table(x, 1) #margin.table()=로우별 컬럼별 합계치를 구한다
margin.table(x, 2)
addmargins(x)
margin.table((table(prev, grade)), 1)
margin.table((table(prev, grade)), 2)

#이원분포표의 조건부 도수분포
options("digits" = 1)
prop.table(table(prev, grade), 1)  #prop.table()=비율테이블 생성
options("digits" = 5)
prop.table(table(prev, grade), 1)

detach(grades)

#이원분할표의 그림 표현
barplot(x, xlab = "Parent", main = "Child seat-belt usage")
barplot(x, xlab = "Parent", main = "Child seat-belt usage", beside = TRUE)

barplot(x, main = "Child seat-belt usage", legend.text = TRUE)
barplot(t(x)) #t()=행과 열을 뒤집는다 (transpose)
        
#II-2-2. 독립 표본이 비교 : boxplot(), density(), stripchart(), qqplot(), qqnorm()
pl <- c(0,0,0,2,4,5,14,14,13,17,17,15)
ep <- c(0, 6, 7,9,11,13,16,16,16,17,18,20)
boxplot(pl, ep, names = c("placebo", "ephedra"))

par(mfrow = c(1,2))
plot(density(pl), ylim = c(0,0.07), main = "densityplots of ep and pl")
lines(density(ep), lty = 2)

stripchart(list(ephedra = ep, placebo = pl), method = "stack",
           pch = 16, offset = 1/2, cex = 3)

par(mfrow = c(1,1))
require(graphics)

#t분포로 난수 200개 생성 -> 45도 직선에 가까울 수록 두 변수 사이의 관계가 깊다.
y <- rt(200, df = 5)  
qqnorm(y); qqline(y, col = 2) 
qqplot(y, rt(300, df = 5))

qqnorm(precip, ylab = "Precipitation[in/yr] for 70 us cities")

#카이제곱분포로 난수 500개 생성
y <- rchisq(500, df = 3)
qqplot(qchisq(ppoints(500), df = 3), y,
       main = expression("Q-Q plot for"~~{chi^2}[nu ==3]))
qqline(y, distribution = function(p) qchisq(p, df = 3),
       prob = c(0.1, 0.6), col = 2)
mtext("qqline(*, dist = qchisq(., df = 3), prob = c(0.1, 0.6))")


#II-2-3. 수치 데이터의 관계 : scatter plot, rank(), cor()

#뉴저지 부동산 가격 데이터 사용
head(homedata)
attach(homedata)
plot(y1970, y2000) 
summary(y1970)
summary(y2000/y1970) #중위값을 보면 1970년과 2000사이에 집값이 약 네 배 올랐음을 알 수 있다.

#서로 무관해 보이는 데이터의 관계성 찾기 : 날씨와 주식시장의 관계계
attach(maydow)
names(maydow)
plot(max.temp[-1], diff(DJA), main = "Max temp vs daily change")
detach(maydow)

attach(kid.weights)
plot(height, weight, pch = as.character(gender))
detach(kid.weights)

attach(homedata);attach(maydow);attach(kid.weights)
cor(y1970, y2000)
cor(max.temp[-1], diff(DJA))
cor(height, weight)

#Spearman rank correlation : 연속적 데이터가 완전한 선형성 없이 변동할 때 구간을 정해놓고 구간사이의 변화를 관찰
x <- c(30, 20, 7, 42, 50, 20)
rank(x)
cor(rank(y1970), rank(y2000))
cor(max.temp[-1], diff(DJA), method = "spearman") #구간을 쪼개서 보니 상관관계가 높아짐
cor(height, weight, m = "s")

detach(homedata);detach(maydow);detach(kid.weights)

head(homedata)
attach(homedata)
lm(y2000~y1970)
res <- lm(y2000~y1970)


#II-2-4. 단순회귀분석 : lm(), abline(), coef(), residuals() predict(), data.frame(), scatter.smotth(), loess(), smooth.spline(), supsmu()

library(UsingR)
attach(student.expenses)
names(student.expenses)
table(cell.phone, car)

#삼원분할표
ftable(table(cell.phone, car, cable.modem))
ftable(table(cell.phone, car, cable.modem),
       col.vars = c("cable.modem", "car"))  #기준점이 되는 컬럼변수 지정
detach(student.expenses)

#독립표본의 비교 : ewr 공항내 활주로에서 움직인 비행기 데이터
attach(ewr)  
names(ewr)
boxplot(AA, CO, DL, HP, NW, TW, US, US)

#관계의 비교 : babies 산모의 임신 출산 데이터
head(babies)
attach(babies)
gestation[gestation ===999] <- NA
plot(gestation, wt)
plot(gestation, wt, pch = smoke)
table(smoke)
legend(locator(1), legend = c("never", "yes", "until pregnant", "long ago", "unknown"),
       pch = c(0:3, 9))

smoke[smoke ==9] <- 4
plot(gestation, wt, col = rainbow(5)[smoke+1])

gestation[gestation === 999] <- NA
f <- wt[smoke ==0]~gestation[smoke ==0]
plot(f, xlab = "gestation", ylab = "wt")

f1 <- wt[smoke ==1]~gestation[smoke==1]
points(f1, pch = 16)
abline(lm(f1), cex = 2, lty = 2)
legend(150, 175, legend = c("0 = never smoked", "1 = smokes now"))

#다변량 데이터에서 model formula이용

#(1) model formula이용한 boxplot
boxplot(gestation ~ inc, data = babies) #전체 데이터
#이상치를 제거하고 시각화하기
boxplot(gestation ~ inc, subset = gestation != 999 & inc != 98, data = babies)
boxplot(gestation ~ inc, subset = gestation != 999 & inc != 98, 
        varwidth = TRUE, xlab = "income level", ylab = "gestation(Days)", data = babies)

#(2)plot()함수에 model formula 적용
boxplot(gestation ~ inc, subset = gestation != 999 & inc != 98, 
        varwidth = TRUE, xlab = "income level", ylab = "gestation(Days)", data = babies)

#(3)xtab()을 이용한 분할표 작성
percents <- c(71, 70, 79, 82, 71, 83, 71, 50, 70, 71, 55, 73)
car <- rep(c("passenger", "pickup", "van/suv"), 4)
year <- rep(rep(2001:2002, c(3,3)), 2) #2001:2002f를 각 3번씩 반복, 그걸 총 2번 반복
year
enforcement <-rep(c("primary", "secondary"), c(6,6))
enforcement
Seatbelts <- data.frame(percents, car, year, enforcement)
Seatbelts

#percent데이터의 ~이하의 컬럼을 같이 가져오기
tab <- xtabs(percents~car+year+enforcement, data= Seatbelts)
tab  
#초범, 재범 별/연간으로 나눠서 비교
ftable(tab, col.vars = c("enforcement", "year"))

#(4) data frame을 나누는 명령어 :split(), stack()
cancer  #리스트 데이터
stack(cancer)  #스택을 통해서 범주형으로 변형

#(5) Lattis graphic
  #model-formula이용: 
# - response ~ predictor|condition
# - options(lattice.theme = "col.whitebg")

library(lattice)
options(lattice.theme = "col.whitebg")

head(babies)

#smoke 답변 별 weight히스토그램 (weight가 999인 데이터 제외)
histogram(~ wt | factor(smoke), data = babies,
          subset = wt != 999, type = "density")

#smoke기준으로 weight를 확률밀도함수 그래프로 시각화 
densityplot(~wt|factor(smoke), data = babies)

bwplot(gestation ~ factor(inc), data = babies, subset = gestation !=999)
bwplot(gestation ~ factor(inc)|factor(smoke), data = babies, subset = gestation  !=999)

#scatterplots with regression line
plot.regression <- function(x, y){
  panel.xyplot(x, y)
  panel.abline(lm(y~x))
}
xyplot(wt ~ gestation |factor(smoke), data = babies,
       subset = (wt !=999 & gestation != 999),
       panel = plot.regression)

#II-2-5. Factor
x <- 1:3; fac = letters[1:3]
factor(x)
factor(fac)


#####III. 추론통계와 분산분석#####
#III-0. 확률 

#III-1-1. 이산형
#spike plot : 범주형 변수로 시각화
k <- 0:4
p<- c(1,2,3,2,1)/9  
plot(k, p, type = 'h', xlab = "k",
     ylab = "probability", ylim = c(0, max(p)))

#coin plot : 동전을 던졌을때 나온 수의 합
k <-0:2  #동전을 두번 던졌을 때 나올 수 있는 합(0, 1, 2)
p <- c(1,2,1)/4 #동전을 두 번 던졌을 떄 나온 합이 
sample(k, size = 1, prob = p)  #확률변수를 생성시키는 명령어

#주사위를 두번 던졌을 때 두 수의 합 샘플링
sample(1:6, size = 1) + sample(1:6, size = 1) 
#prob : equal value for default

#모평균의 구간추정(분산을 알 때) :정규분포를 활용한다. 
#survey데이터의 학생 모집단의 키의 분산이 9.48일 때, 허용오차margin of error와 구간을 95% 신뢰 수준으로 추정하라
library(MASS)
head(survey)

height.survey <- survey$Height
mean(height.survey, na.rm = TRUE) #결측치 포함한 평균값

#결측치 필터링
height.response <- na.omit(survey$Height)
n <- length(height.response)
sigma <- 9.48  #주어진 모분산값 적용
sem <- sigma/sqrt(n)  #standard error of the mean 표준오차
sem
E <- qnorm(.975)*sem #margin of error 양쪽 극단이 각각 0.025의 추정실패 확률을 가진다
xbar <- mean(height.response)  #표본평균
xbar + c(-E, E)  #표본평균 + 표준오차 = 95% 신뢰수준으로 이 구간 안에서 평균값이 잡힐 것이다.

#Alt. Solution : TeachingDemos라이브러리의 구간추정함수 사용하기
#install.packages("TeachingDemos")
library(TeachingDemos)
#z.test = 표준정규분포를 기준으로 표준편차를 지정하면 이에 해당하는 확률변수값을 반환한다.
z.test(height.response, sd = sigma)

#모평균의 구간추정(분산을 모를 때) : 정규분포가 아닌 t분포를 이용한다.(자유도는 n-1를 적용한다)
height.response <- na.omit(survey$Height)
n <- length(height.response)
s <- sd(height.response) #모분산 대신 표본표준편차 구해 사용한다.
SE <- s / sqrt(n); SE  #표준오차 구하기
E <- qt(.975, df = n-1)* SE; E
xbar <- mean(height.response)
xbar + c(-E, E) 

#Alt. Solution : TeachingDemos라이브러리의 t.test()사용
t.test(height.response)

#모평균 추정을 위한 표본의 크기
#student 키의 모표준편차가 9.48일 때 95%신뢰수준에서 1.2cm 허용오차를 위해서 필요한 표본의 크기는?
zstar <- qnorm(.975)
sigma <- 9.48
E = 1.2
zstar^2 * sigma^2/E^2  #표본크기 계산 공식에 의해 약 240개의 샘플이 필요하다.

#모비율에 대한 점추정(불량품 개수, 품질별 개수 등)
#여학생 비율에 대한 점추정
gender.response <- na.omit(survey$Sex)
n <- length(gender.response) #전체학생수
k <- sum(gender.response == "Female")  #여학생의 수
pbar <- k/n ; pbar

#모비율에 대한 구간추정 
#신뢰도 95%의 여학생 비율에 대한 허용오차와 추정구간은?
gender.response <- na.omit(survey$Sex)
n <- length(gender.response) #전체학생수
k <- sum(gender.response == "Female")  #여학생의 수
pbar <- k/n ; pbar
SE <- sqrt(pbar * (1 - pbar)/n); SE  #표준오차
E <- qnorm(.975) * SE;E  #허용오차
pbar + c(-E, E)

#Alt. Solution : MASS패키지의 비율추정 함수 prop.test()사용
prop.test(k, n)

#모비율 추정을 위한 표본크기
#여학생 비율 50%의 허용오차 5% 달성을 위해 필요한 표본 크기는?
zstar <- qnorm(.975)
zstar
p <- 0.5
E <- 0.05
zstar^2 * p * (1-p)/E^2

#TYPE I ERROR : 알파에러 (올바른 귀무가설을 기각하는 것)
#유의수준 significance level= Type 1 error의 확률 = 알파

#모평균에 대한 lower tail검정
#제조업체에서 전구의 수명이 10000시간이라고 주장 / 30개 표본에서 9900시간이 나옴
#0.05 유의수준에서 제조업체의 주장을 기각할 수 있을까? (표준편차 = 120)
xbar <- 9900
mu0 <- 10000
sigma <- 120
n <- 30
z <-(xbar - mu0)/ (sigma/sqrt(n))
z
alpha <-.05
z.alpha <- qnorm(1 - alpha)
- z.alpha  #검정통계량 -4.5644 <임계치 -1.6449 이므로 .05 유의수준에서 제조업체의 주장은 기각

#critial value대신 pnorm()을 이용해서 p-value 계산
pval <- pnorm(z)
pval

#모평균에 대한 Upper tail 검정(분산을 알 때)
#과자 포화지방 함유량이 최대 2그램으로 표시되어 있는데 35개 표본에서 2.1그램 발견
#.05유의 수준에서 제조업체의 주장을 기각할 수 있을까? (표준편차가 0.25그램)
#모집단의 통계량은 그리스문자 사용 : 평균=뮤/분산=시그마/비율=로
#표본의 통계랑은 알파벳 사용:평균=m, 표준편차/분산 = s/ 비율 = r
xbar <- 2.1
mu0 <- 2
sigma <- 0.25
n <- 35
z <-(xbar - mu0)/(sigma/sqrt(n)) ;z
alpha <- .05
z.alpha <- qnorm(1 - alpha)
z.alpha  #임계치 1.6448 < 검정통계랑 2.3664 이므로 .05 유의수준에서 제조업체의 주장은 기각(임계치 밖에 위치)

#critial value대신 누적함수값pnorm()을 이용해서 p-value 계산
pval <- pnorm(z, lower.tail = FALSE)  #FALSE설정하지 않으면 1/2로 나뉘어져 계산된다.
pval

#모평균의 Lower Tail검정(분산을 모를때) : 공식은 같지만 시그마대신 표본표준편차로 대체한다.
#제조업체에서 전구의 수명이 10000시간이라고 주장 / 30개 표본에서 9900시간이 나옴
#0.05 유의수준에서 제조업체의 주장을 기각할 수 있을까? (표본표준편차 = 125)
xbar <- 9900
mu0 <- 10000
s <- 125
n <- 30
t <- (xbar - mu0)/s(sqrt(n)) ;t
alpha <- .05
t.alpha <- qt(1-alpha, df = n-1)
-t.alpha   #검정통계량 -4.3818 < 임계치 -1.6991 이므로 reject

#Alt. Solution : 임계치 대신qt()를 이용해 p-value를 계산할 수도 있다.
alpha <-.05
t.alpha <- qt(1-alpha, df = n-1)
- t.alpha  #lower tail이므로 부호를 바꿔준다.

#모평균의 Upper tail의 검정(분산을 모를때)
#과자 포화지방 함유량이 최대 2그램으로 표시되어 있는데 35개 표본에서 2.1그램 발견
#.05유의 수준에서 제조업체의 주장을 기각할 수 있을까? (표본표준편차가 0.3그램)
xbar <- 2.1
mu0 <- 2
s <- 0.3
n <- 35
t <-(xbar - mu0)/(s/sqrt(n)) ;t

alpha <- .05
t.alpha <- qt(1 - alpha, df = n-1)
t.alpha  #검정통계량 1.9720 > 임계치 1.6991이므로 주장을 기각

#Alt.Solution : 신qt()를 이용해 p-value를 계산
alpha <- .05
t.alpha <- qt(1 - alpha, df = n-1)
t.alpha  #값이 0.05보다 작기 때문에 reject

#모평균의 양측검정(분산을 모를때)

#모비율의 Lower tail 검정
#작년 선거율의 투표율이 60%인데 148명 설문조사 시 85명이 투표 참여의사
#.05유의 수준에서 투표율이 60%일 것이라고 할 수 있는가? (H0)
pbar <- 85/148
p0 <- .6
n <- 148
z <- (pbar - p0)/sqrt(p0 * (1-p0)/n)
z

alpha <- .05
z.alpha <- qnorm(1-alpha)
-z.alpha  #검정통계랑 -0.6376 > -1.6449이므로 귀무가설을 기각하지 않는다(참여율 60%이상)

#Alt. Solution1 
pval <- pnorm(z)
pval
#Alt. Solution2
prop.test(85, 148, p=.06, alt = "less", correct = FALSE)

#모비율의 UPper tail 검정 : idem
#모비율의 양측검정 : idem

#TYPE II ERROR : 베타에러(잘못된 가설을 기각하지 않는 것)
#검정력 = 1 - 베타

#모평균 lower tail검정 시의 2종오류(분산을 알 때) : 중심국한정리를 이용하여 2종오류의 추정치를 알아본다.
#제조업체에서 전구의 수명이 10000시간이라고 주장 / 30개 표본에서 9950시간이 나옴
#0.05 유의수준에서 2종오류의 확률은? (모표준편차 = 120)
n <- 30
sigma <- 120
sem <- sigma/sqrt(n) ; sem  #표준오차
alpha <- .05
mu0 <- 10000
q <- qnorm(alpha, mean = mu0, sd = sem); q  #기각역 한계 부분 도출: 9963시간
#따라서 표본평균이 9964 이상인 한 H0는 기각되지 않는다.
mu <- 9950
pnorm(q, mean = mu, sd = sem, lower.tail = FALSE)  #2종오류일 확률 26.2%, 즉 가설검정력 73.8%

#모평균의 upper tail검정 시의 2종 오류(분산을 알 때)
#과자 포화지방 함유량이 최대 2그램으로 표시되어 있는데 35개 표본에서 2.09그램 발견
#.05유의 수준에서 2종오류일 확률은? (모표준편차가 0.25그램)
n <- 35
sigma <- .25
sem <- sigma/sqrt(n) ; sem  #표준오차
alpha <- .05
mu0 <- 2
q <- qnorm(alpha, mean = mu0, sd = sem, lower.tail = FALSE); q 

mu <- 2.09
pnorm(q, mean = mu, sd = sem)  #2종오류일 확률 31%

#모평균 양측검정에서의 2종오류(분산을 알 때)
#남극의 King Penguin의 평균체중이 작년 여름에 15.4 kg.
#올해 여름 같은 지역에서 35마리의 평균체중 = 14.6 kg.
#(Q) 모표준편차 = 2.5 kg라면 .05 유의수준에서 H0 기각?
n <- 35 ; sigma <- 2.5
sem <- sigma/sqrt(n) ; sem  #표준오차
alpha <- .05
mu0 <- 15.4
I <- c(alpha/2, 1- alpha/2)
q <-qnorm(I, mean = mu0, sd = sem); q 
#표본평균이 14.572~16.228이면 기각하지 않는다.
#M = 15.1이므로 양측의 lower tail을 계산할 수 있다.
mu <- 15.1
p <-pnorm(q, mean = mu, sd = sem) ;p
#2종오류일 확률 = 양극단 사이의 확률
diff(p) #양극단차이를 계산 -> 2종오류일 확률 89%

#모평균의 lower tail검정에서의 2종오류(분산을 모를 때)
#모평균의 upper tail검정에서의 2종오류(분산을 모를 때)
#모평균의 양측검정에서의 2종오류(분산을 모를 때)
#모비율의 lower tail검정 

#2개의 대응표본에서의 모집단 평균
#immer데이터가 정규분포를 따른다면 두 해의 수확량 차이에 대한 95% 신뢰구간 추정량은?
library(MASS)
head(immer)
#paired t-test사용
t.test(immer$Y1, immer$Y2, paired = TRUE) # 두 해의 수확량 차이에 대한 95% 신뢰구간 추정량은 6.121954 ~ 25.704713

#2개의 독립표본간의 모집단 평균(unpaired t-test)
#mtcars 데이터가 정규분포를 따른다고 가정할 때 수동변속기와 자동변속기 간의 휘발유 마일리지의 차이에 대한 95% 신뢰구간을 구하라.
mtcars$mpg
mtcars$am
L <- mtcars$am == 0 ;L
mpg.auto = mtcars[L,]$mpg #변속기가 자동인 차의 연비만 모아 변수설정
mpg.auto
mpg.manual = mtcars[!L,]$mpg
t.test(mpg.auto, mpg.manual)  # 신뢰구간  -0.1564218  0.1669620

#2개 모집단의 비율 비교 : prop.test()사용
#정규분포를 가정하고 원주민 여학생과 비원주민 여학생간의 비율 차이에 대한 95% 신뢰구간의 추정치를 알아보라.
head(quine)
str(quine)
table(quine$Eth, quine$Sex)
prop.test(table(quine$Eth, quine$Sex), correct = FALSE) #신뢰구간 -15% ~  16.7%

#적합도 goodness of Fit :예상했던 결과와 어느정도 부합하는가?
#X^2분포를 이용해 적합성 혹은 독립성 검정을 한다.
#다항개체군 : 모집단이 범주형이고 중복되지 않는 클래스에 속하는 경우
#H0 = 관측빈도 = 예측빈도 일 때/ H1 = 같지 않으면 대립가설 : p value가 유의수준보다 작으면 귀무가설 기각

#적합성 검정: survey 데이터가 다음 흡연통계를 지지하는지 .05 significance level로 검증하라.
levels(survey$Smoke)
smoke.freq <- table(survey$Smoke) #도수분포 생성
smoke.prob <- c(.045, .795, .085, .075)
chisq.test(smoke.freq, p= smoke.prob) #pvalue = 0.9 > 0.05 이므로 기각하지 않는다.

#독립성 검정 
tbl <- table(survey$Smoke, survey$Exer)
tbl
chisq.test(tbl) #0.4828 > .05유의수준이므로 흡연습관과 운동습관은 서로 독립이다.
#
ctbl <- cbind(tbl["Freq"], tbl["None"]_tbl[,"Some"])

#분산분석(ANOVA) : 다양한 처리treatment를 피험자에 적용 후 응답데이터 수집
#1. 평균의 분산을 분석하는 방법/2. 분산의 평균을 분석
#귀무가설 :  모두 같다/ 대립가설 :  하나라도 다른 것이 있다.

#완전임의배치법 completely randomized design CRD: 실험에서 검토대상이 되는 단 하나의 주요인(primary factor)
#예제:패스트푸드 체인사업에서 3개 신상품메뉴에 대한 test 마케팅.
#3개 상품의 인기도가 같은지를 알기 위해 18개 가맹점을 임의 선택한 후 6개의 레스토랑 별로 나누어 각각 첫째, 둘째, 세째 메뉴상품을 검정.
item1 <- c(22,42,44,52,45,37)
item2 <- c(52,33,8,47,43,32)
item3 <- c(16, 24, 19, 18, 34, 39)
df1 <- cbind(item1, item2, item3)
df1  

#행렬에 t함수를 적용한 후 단일벡터로 만들어준다.
t(as.matrix(df1))
r <-c(t(as.matrix(df1)))
r
f <- c("item1", "item2", "item3")
k <- 3
n <- 6
#gl()함수로 tm변수에 factor의 level값 적용 
tm <- gl(k, 1, n*k, factor(f))
tm
#avo()함수로 ANOVA분석 실행
av <- aov(r~tm) #formula적용 : 매출실적치 r ~ 아이템 나열치tm를 매치
av
summary(av)  #p value 0.11 > .05 귀무가설을 기각하지 않는다(즉 신상품의 매출이 모두 같다.)


#무선화 구획설계
#요인설계 factorial design

#####IV. R을 이용한 예측모델#####
#IV-1.선형회귀분석
#install.packages("ISwR")
eruption.lm <- lm(eruptions ~ waiting, data = faithful)
coeffs <- coefficients(eruption.lm); coeffs  

waiting <- 80
duration <- coeffs[1] + coeffs[2]*waiting
duration
#Alt.Solution
newdata <- data.frame(waiting = 80)
predict(eruption.lm, newdata) #대기시간이 80일 때 선형모델로 intercept 예측하기

summary(eruption.lm)  #잔차값, p-value, r^값 등 관련지표를 볼 수 있다.
summary(eruption.lm)$r.squared #r^2 값만 보기 

#결정계수 coeff of determination (R squared)









