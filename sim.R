#################
# Deck Creation #
#################
val<-c("A","K","Q","J","10","9","8","7","6","5","4","3","2")

value<-c(val,val,val,val)

spades<-rep("s",13)
clubs<-rep("c",13)
diamonds<-rep("d",13)
hearts<-rep("h",13)

suit<-c(spades,clubs,diamonds,hearts)

deck<-paste(value,suit,sep = "")


############
# pre flop #
############
for(i in 1:2){
  player1[i]<-sample(deck,size = 1, replace = FALSE)
  deck<-deck[-which(deck==player1[i])]
  player2[i]<-sample(deck,size = 1,replace = FALSE)
  deck<-deck[-which(deck==player2[i])]
}

########
# flop #
########
burn<-sample(deck, size=3, replace = FALSE)
deck<-deck[-which(deck%in%burn)]

board<-sample(deck,size=3,replace=FALSE)
deck<-deck[-which(deck%in%board)]

########
# turn #
########
burn.turn<-sample(deck,size = 1,replace = FALSE)
deck<-deck[-which(deck%in%burn.turn)]

board[4]<-sample(deck,size = 1,replace = FALSE)
deck<-deck[-which(deck%in%board)]

#########
# river #
#########
burn.river<-sample(deck,size = 1,replace=FALSE)
deck<-deck[-which(deck%in%burn.river)]

board[5]<-sample(deck,size = 1,replace = FALSE)
deck<-deck[-which(deck%in%board)]
