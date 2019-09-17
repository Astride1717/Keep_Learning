###1. 사과 품종을 구분할 수 있는 특징이 있는지 그래프로 표현
library(ggplot2)
apple <- read.csv("Data/apple.csv")
View(apple)


#1-1 품종 vs 무게
apple_box1 <- ggplot(data = apple, aes(x = model, y = weight, color = model))+
  geom_boxplot()
#1-2 품종 vs 당도
apple_box2 <- ggplot(data = apple, aes(x = model, y = sugar, color = model))+
  geom_boxplot()
#1-3 품종별 색상 분포
apple_color <- ggplot(data = apple, aes(x = color, fill = model))+
  geom_bar()

###2. 전국전기차충전소표준데이터에서 전기차 충전소의 위치 데이터 확보 후 데이터 정제
e_car <- read.csv("Data/전국전기차충전소표준데이터.csv")
View(e_car)

#결측치 없애고 factor변수를 character로 변경 후 필요한 위치데이터 관련 변수만 가져오기
e_station <- e_car %>%   
  filter(!is.na("소재지지번주소")) %>%          
  select(as.character(c("충전소명", "소재지지번주소", "위도", "경도")))   
View(e_station)

#변수명 변경
e_station1 <- rename(e_station, 
                     station = '충전소명',
                     lon = '경도', 
                     lat = '위도',
                     add = '소재지지번주소') 
View(e_station1)


###3.2에서 정제한 데이터를 구글맵 지도에 표시
library(ggmap)
googleAPIkey = "***"
register_google(googleAPIkey)

#구글맵 표시
get_googlemap(center = "Seoul", maptype = "roadmap",
              zoom = 12) %>% ggmap()+
  geom_point(data= e_station1, aes(x= e_station1$lon, y = e_station1$lat), 
             size = 3, color = "blue",alpha = 0.5) 

#구글맵에 충전소명 추가하기
get_googlemap(center = "Seoul", maptype = "roadmap",
              zoom = 13) %>% ggmap()+
  geom_point(data= e_station1, aes(x= e_station1$lon, y = e_station1$lat), 
             size = 3, color = "red",alpha = 0.5) +
  geom_text(data= e_station1, aes(x= e_station1$lon, y = e_station1$lat+0.001, label = station ),
            size = 3, color = "blue")


#leaflet으로 지도표시
library(leaflet)
leaflet(data = e_station1) %>% 
  addProviderTiles(providers$OpenStreetMap) %>% 
  addMarkers(lng = ~lon, lat = ~lat, clusterOptions = markerClusterOptions(),
             popup = ~as.character(paste0("<strong>", paste0("충전소명:", station),"</strong><br>",
                                          "주소: ", add,"<br>")))











