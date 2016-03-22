mode <- function(x) {
	ux <- unique(x)
	ux[which.max(tabulate(match(x, ux)))]
}


heatmap <- read.csv("auta_heatmap.csv")
zone7<-heatmap[heatmap[2]=="7",3:4]
zone8<-heatmap[heatmap[2]=="8",3:4]
zone9<-heatmap[heatmap[2]=="9",3:4]


print("Zona 7:")
mean(zone7[,1])
median(zone7[,1])
max(zone7[,1])
min(zone7[,1])
mean(zone7[,2])
median(zone7[,2])
max(zone7[,2])
min(zone7[,2])


print("Zona 8:")
mean(zone8[,1])
median(zone8[,1])
max(zone8[,1])
min(zone8[,1])
mean(zone8[,2])
median(zone8[,2])
max(zone8[,2])
min(zone8[,2])


print("Zona 9:")
mean(zone9[,1])
median(zone9[,1])
max(zone9[,1])
min(zone9[,1])
mean(zone9[,2])
median(zone9[,2])
max(zone9[,2])
min(zone9[,2])

print("Zaokrouhleny dataset:")
library(plyr)
cleanhm <- heatmap[heatmap[2]!="0",]
roundwidth <- round_any(cleanhm[,3], 10)
roundheight <- round_any(cleanhm[,4], 10)

print("Sirka:")
mean(roundwidth)
median(roundwidth)
mode(roundwidth)
max(roundwidth)
min(roundwidth)
print("Vyska:")
mean(roundheight)
median(roundheight)
mode(roundheight)
max(roundheight)
min(roundheight)

print("Pocet aut v obrazku:")
pics <- table(heatmap[1])
cip <- as.data.frame(pics)
mean(cip$Freq)
median(cip$Freq)
mode(cip$Freq)
max(cip$Freq)
min(cip$Freq)
