# R ÖĞRENELİM

"Merhaba Dünya!"

#<- atama operatörü
x<-5

#help() yardım için metot
help(getwd)

#Çalışma dizini ekrana yazdıralım
getwd()

#Çalışma dizini değiştirelim
setwd("C:/Users/ASUS/Desktop/demo")

#Vektör veri tipi
v<-c(1,2,3)

#Liste veri tipi
l<-list(x=c("elma","erik"),y=1:10)

#Vektörün elemanlarına ulaşmak için
v[1]

#Listenin öğrelerine ulaşalım
l[1]

#Listenin öğelerinin elemanlarına ulaşalım
l[[1]][2]
l[[2]][5]

#Mantıksal operatörleri kullanabiliriz
v[c(TRUE,FALSE,TRUE)]

#Öğeler için $ sembolü kullanılabilir
l$y

#C() NULL döndürür
c()

#NULL ekrana yazılmaz
c(c(),1,NULL)

#NA eksik veya kayıp veri için kullanılır
c(1,NA,"a")

#data frame veri yapısı
d<-data.frame(x=c(1,NA,3))
print(d)

#Eksik veri yerine atama yapalım
d$x[is.na(d$x)]<-0

#Paket kullanımı
library()

stats::var(1:10)

#Data frame kullanımı
df<-data.frame(col1=c(1,2,3),col2=c(4,5,6))
df

df$.col3<-df$col1+df$col2
df







