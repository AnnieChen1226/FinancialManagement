library(readxl)
library(dplyr)


data4block.df= read.csv("D:\\test\\¼s¹F\\2382.csv", sep=",", row.names=1)
names(data4block.df)
temp1 <- as.matrix(data4block.df) 
temp2<-c("date","k","d","rsi","sol")
head(data4block)
i<-1
datelist<-c("date")
klist<-c("k")
dlist<-c("d")
rsilist<-c("rsi")
sollist<-c("sol")
while(i<955)
{
TureORFalse1<-temp1[i,6]
TureORFalse2<-temp1[i+1,6]
date<-temp1[i,1]
k<-temp1[i,2]
d<-temp1[i,3]
rsi<-temp1[i,4]
sol<-''
mylist <- c(date,k,d,rsi,sol)


if(TureORFalse1!=TureORFalse2)
{
  if(TureORFalse1==1)
  {
    sol<-"death"
    print(date)
    print(k)
    print(d)
    print(rsi)
    print(sol)
    
    datelist <- c(datelist, date)
    klist <- c(klist, k)
    dlist <- c(dlist, d)
    rsilist <- c(rsilist, rsi)
    sollist <- c(sollist, sol)
    
    print("--------")
  }
  else{
    sol<-"golden"
    print(date)
    print(k)
    print(d)
    print(rsi)
    print(sol)
    
    datelist <- c(datelist, date)
    klist <- c(klist, k)
    dlist <- c(dlist, d)
    rsilist <- c(rsilist, rsi)
    sollist <- c(sollist, sol)
    
    
    print("--------")
  }
}
else
{
  print(temp1[i,1])
  print("nothing change")
  print("--------")
}


i<-i+1
}

Total<-cbind(datelist,klist,dlist,rsilist,sollist)
print(Total)
write.csv(Total,file="D:\\test\\¼s¹F\\2382text.csv",row.names = FALSE)
rm(Total)
rm(data4block.df)
rm(temp1)
rm(temp2)
