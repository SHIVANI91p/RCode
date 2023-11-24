x<-10

print(x)
x<-c(44,50,38,96,42,47,40,39,46,50)
x
x[4]
mean(x)
median(x)
var(x)
sd(x)
#exercise
x<-c(2,7,3,12,9)
mean(x)
var(x)
sd(x)
# corelation and co variance
X<-c(10,20,30,40,50)
Y<-c(10,20,30,40,50)
X
Y
cor(X,Y)

X1<-c(10,20,30,40,50)
Y1<-c(50,40,30,20,10)
X1
Y1
cor(X1,Y1)

x<-c(41,19,23,40,55)
y<-c(94,60,74,71,82)
cor(x,y)

x1<-c(41,19,2,40,55)
y1<-c(61,76,82,71,74)
cor(x1,y1)

# read csv file
ibmdata=read.csv('C:\\Users\\hp\\Data science\\IBMStock.csv')
ibmdata
head(ibmdata)
str(ibmdata)
ibmdata$price


mygetdata=read.csv('C:\\Users\\hp\\Data science\\GEStock.csv')
head(mygetdata)
str(mygetdata)
mygetdata$Price

cor(getdata$Price,mygetdata$Price)
 