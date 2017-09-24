
val<-c("A","K","Q","J","10","9","8","7","6","5","4","3","2")

value<-c(val,val,val,val)

spades<-rep("s",13)
clubs<-rep("c",13)
diamonds<-rep("d",13)
hearts<-rep("h",13)

suit<-c(spades,clubs,diamonds,hearts)

deck<-paste(value,suit,sep = "")

sample(deck,size = 2,replace = FALSE)