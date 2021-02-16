#Veriler ile Çalışmak

# Veri setini import etmek için
read.table()

#Çalışma dizinini ayarlayalım
getwd()
setwd("C:/Users/ASUS/Desktop/R-ile-Veri-Bilimi/")

#Veri setini import edelim
car=read.table("car.data.csv",header = TRUE,
               sep=",",stringsAsFactors = TRUE)

#Veri setini görelim
View(car)

#Veri setinin sınıfını görelim
class(car)

#Veri setinin boyutunu görelim
dim(car)

#Veri setinin ilk 6 satırını görelim
head(car)

#Veri setinin yapısını görelim
str(car)

#Veri setinin özetini görelim
summary(car)

#Veri setini ekrana yazdıralım
print(car)

#German verisini import edelim
data<-read.table("german.data",sep=" ",
                 stringsAsFactors = FALSE, 
                 header=FALSE)

#Veri setinin ilk altı satırını görelim
head(data)

#Veri setindeki bazı sütunları çekelim
data1<-data[,c("V9","V13","V15","V21")]

#data1 veri setinin ilk altı satırını görelim
head(data1)

#Veri setindeki sütunlara isim verelim
colnames(data1)<-c("Cinsiyet","Yaş",
                   "Ev","Kredi")
#Veri setinin yapısını görelim
str(data1)

#Kategorik değişkenleri faktör tipine çevirelim
data1$Cinsiyet<-as.factor(data1$Cinsiyet)
data1$Ev<-as.factor(data1$Ev)
data1$Kredi<-as.factor(data1$Kredi)

#Cinsiyet değişkeninin alt kategorilerini ayarlayalım
levels(data1$Cinsiyet)<-c( "male:divorced/separated",
              "female:divorced/separated/married", 
              "male:single", 
              "male :married/widowed")

#Ev değişkeninin alt kategorilerini ayarlayalım
levels(data1$Ev)<-c("rent","own","for free")

#Kredi değişkeninin alt kategorilerini ayarlayalım
levels(data1$Kredi)<-c("iyi kredi","kötü kredi")

#Veri setinin yapısını görelim
str(data1)

#Ev ve kredi arasındaki ilişkinin talosunu görelim
table(data1$Ev,data1$Kredi)

























