#R에서 ARIMA 분석하기

#ARIMA stands for Autoregressive Integrated Moving Average 
#p = number of lags / order of AR terms
#d = order of differencing
#q = number of lagged forecast errors / order of MA terms

#1단계. 시계열 자료를 시각화 해서 안정적 시계열인지를 확인한다.
str(AirPassengers)  #time series객체가 필요.다른 자료형일 경우 ts()로 변환
plot(AirPassengers)
abline(reg=lm(AirPassengers~time(AirPassengers)))

cycle(AirPassengers)
plot(aggregate(AirPassengers, FUN=mean))
boxplot(AirPassengers~cycle(AirPassengers))

#A. 시간의 흐름에 따라 증가하는 Trend 존재
#B. 시간의 흐름에 따라 분산이 증가하므로 안정적 시계열이 아님 

#2단계. 시계열 자료를 안정적 시계열로 변환한다.

plot(stl(AirPassengers, s.window = "periodic"))
#로그(log)를 씌운 후 차분(differencing : 연속적인 값들의 차를 계산하는 것)해 안정화 한 후
#tseries 패키지에 내장되어 있는 adf.test 함수로 시계열이 안정적 시계열인지 여부를 확인한다.

#install.packages("tseries")
library(tseries)
adf.test(diff(log(AirPassengers)), alternative = "stationary", k = 0)

#The p-value(0.01) is smaller than the significance level 0.05 so it is stationary

#3단계. ACF/PACF차트나 auto.arima 함수를 사용하여 최적화된 파라미터를 찾는다.
#(ARIMA 모델에서는 세가지 모형을 위한 세가지 파라미터 (p : AR, d : I, q : MA)가 필요)
#install.packages("forecast")
library(forecast)
auto.arima(diff(log(AirPassengers))) #auto.arima함수는 자동으로 세 파라미터를 찾아준다.

#auto.arima 함수를 사용해서 구한 파라미터가 모형의 가정을 만족하는 지를 보여준다.
tsdiag(auto.arima(diff(log(AirPassengers))))


#4단계. ARIMA 모형을 만든다.
fit<- arima(log(AirPassengers), c(0,0,1),
                 seasonal = list(order = c(0,1,1), period = 12))

#5단계. (필요한 경우) 미래 추이에 대해 예측한다.
#항후 10년간의 추이에 대해 예측하기
pred <- predict(fit, n.ahead = 10*12)

#예측결과는 점선으로 나타난다.
ts.plot(AirPassengers, 2.718^pred$pred, log = "y", lty = c(1,3))


