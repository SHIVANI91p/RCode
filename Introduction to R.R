"Hello World!!"
5
name="Amit"     # Variable
name
name1="shreya"
name2="amisha"
age=25
age=age+5
age
4*5
text="Excellent"
paste("Excelr is",text)     #Concatenate
paste("Students are",text)
paste("My Name is",name1)
# Assign same value to different variables in one line
val1=val2=val3="Orange"
#Legal variable names
myvar="smehal"
myVar="amit"
MYVAR="shivani"
my_var="deep"
myvar2="meera"
this.year=2022
#Data types in R 
#numeric ,character, integer,logical
x=10.5
class(x)
class(name)
y=1000L
class(y)
x=TRUE
class(x)
#Comparison Operator
5>3
5<3
5==5 #Assignment operator
5!=5 #not qual to operator

#Arithmetic operators
x=20
y=3

x+y
x-y
x*y
x/y
x%%y   # it gives remainder  modulus
x%/%y   # to display only integer part
x^2     #it gives squares
y^2
#cONSTANTS
2*pi*2345
# pi is constant
??constants
LETTERS
letters
pi
#Assignments operators
x=50
x<-50
 #Built-in Math Functions
max(76,34,91)
min(76,34,91)
sqrt(25)
abs(-4.5)
#Data Structures:  Vectors ,DataFrames
#(Homogeneous vector)
#vector pf strings/charactes
fruits=c("Banana","Apple","Orange","kiwi")
class(fruits)
#Vector of numerical
n1=c(1,2,3,4)
n2=c(T,F,TRUE,FALSE)
class(n1)
class(n2)
#Heterogeneous vector
mix=c(81,4.4,TRUE,"Mango",5L,F,2,3,45)
class(mix)    #it checks priority

x=c(2,5,8,4)     #Elements in eachvector should be equal
y=c(1,9,9,9)
 x+y
x*5 
(x+y)*1.5

#Sequence
1:10
40:45
a=seq(1,50,5)#@stop value , stop value , step
a
b=seq(1,50,by=3) 
b# by is keyword
c=seq(1,10)
c
d=seq(10,1,-2)
d
#Repetition
rep(45,7)
rep("Mango",5)

#Random Sample
sample(1:50,3)
sample(1:10,20,replace=TRUE)
sample(c("HP","Apple","Lenovo"),7,replace=TRUE)
sample(c("HP","Apple","Lenovo"),2)
#Indexing / Accessing  Vector Element
x=c(2,5,8,20,10,30,58)
x[5]
x[c(5,6)]
x[-1]  # exclude 1st element
x[-2]   #exclude 2nd element
x[c(-5,-6)]      #exclude 5th ,6th element
x[1]=3     #replace 1st element with 3
x
x[-1]=5   #excluding 1st element all elements are replaced with 5
x
y=c(1,9,9,9)
y
y<9
y[y<9]=7
y
y[y>7]=10
y


#Relational operators with vectors
marks=c(60,70,80,50,90)
marks>50
marks[marks>50]
marks==80

names=c("Snehal","Pooja","Vidya","Ganesh")
p1=c('a','b')
"Pooja"%in% names
"Meenal"%in% names
"pooja"%in% names


#slicing
marks
marks[3:7]
marks[4]
marks[-3]=100
marks
marks[3]=97
marks

#Select elemnts from a vector with conditions
price=c(2999,449,29,650,2800,192,9384,373,474,4745)
price[2:7]
price[price>1000]
sort(price)
sort(price,descending=T)  #raise an error
help(sort)
sort(price,decreasing=T)#This is correct command
length(price)
help(paste)
nth=paste(1:12,c("st","nd","rd",rep("th",9)))
nth
month.name
month.abb
paste(month.abb ,"is the",nth,"month of the year.")
  

#Basic functions on vector
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
mode(price)    #since there are no frequent element occur it gives data type
# Data Frames
# Slicing Data Frames
a=c(42,18,91,87,66)
b=c("p","q","r","s","t")
df=data.frame(a,b)
df
df1=data.frame(
       Traning=c("Strength","Stamina","other"),
       Pulse=c(100,150,120),
       Duration=c(60,30,45)
)     
df1
df1[,1]   #all rows ,1st column
df1[2,]    #2nd row ,all coumns
df1[1,]    #1st row ,all columns
df1[3,]
df1[,2]
df1[,3]
df1[,]    #after , row value is there before , column value is there
df1[1,2]
df1[1,1]
df1[1,3]
df1$Traning
df1$Pulse
df1$Duration
df2=data.frame(height=c(150,160),weight=c(65,72),gender=c("male","female"))
df2
food=data.frame(name=c("Pav Bhaji","Paneer Masala","Kalu Katali",
                       "Buteer Chicken","Gulabjamun","Mutton Biryani"),
                type=c("Veg","Veg","Veg","Nonveg","Veg","Nonveg"),
                taste=c("Spicy","Spicy","Sweet","Spicy","Sweet","Spicy"),
                price=c(120,235,420,340,90,315)
                )
food
food[1,]
food[2,1]
#rows with food type:Veg
food[food$type=="Veg",]
#food names and prices for Nonveg Items
food[food$type=="Nonveg",c(1,4)] #food[food$type=="Nonveg",c("name","price")]
#all spicy food with price less than 300
food[food$taste=="Spicy"& food$price<300,]    #satisfy both condition
food[food$taste=="Spicy"| food$price<300,]    #satisfy at least one condition


# Orange ,mtcars are built in data set
Orange
mtcars
dim(mtcars)  #dim(dimensions) shows no of rows and no of columns
dim(Orange)
nrow(mtcars)   # to Access no of rows
ncol(mtcars)  #  to Access no of columns  
str(mtcars)   #structure- col names data type and valuessummary(mtcars)
summary(mtcars)
help(mtcars)      #gives description
mtcars$cyl
table(mtcars$cyl)
mtcars$gear
table(mtcars$gear)
#USArrests another dataset
USArrests
help("USArrests")
View(USArrests)  #Dataset opens in new window in table structure
data()        #check all available Datasets
head(USArrests)
tail(USArrests)
dim(USArrests)
head(USArrests,8)#by default it gives first 6 records  8 is to show specific record
tail(USArrests,10)   # 10 is to show specific last 10 records 