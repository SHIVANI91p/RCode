v<-c(17,25,38,13,41)
plot(v,type="o")
airquality
str(airquality)
#Box Plot
boxplot(airquality$Ozone)
airquality$Ozone  
A<-c(17,2,8,13,1,22)
B<-c("jan","feb","mar","apr","may","jun")
barplot(A, names.arg=B,xlab="Month",ylab="Article",col="green",main="Newspaper Publisher")
#scatterplot
pairs(~wt+mpg+disp+cyl,data=mtcars,main="Scatterplot Matrix")
x<-c(2,0,0,4)
x[1]   # select 1st element
x[1]<-3  # replace 1st element with 3
x
x[-1]  #exclude the first element
x[-1]<-5  # except 1st element remaining elements are replaced with 5
x
x<9  # comparison operator
x[4]<-1
x
df<-data.frame(x=1:3,y=c("a","b","c"))
df
df[1,1]
df[1,c(1,2)]
df[c(1,3),2]
df[c(1,3),1]
df[c(1,3),]
# to install library dplyr
install.packages('dplyr')
library(dplyr)       # to use a library

#to install library nycflights13

install.packages('nycflights13')
library(nycflights13)  #to use a library nycflights13

dim(flights)     #what output says
filter(flights,flights$year==2013,flights$month==4)
flights
head(flights)
tail(flights)
colnames(flights)
head(flights,20)
#.............subset
attach(flights)

head(filter(flights,flights$month==6,flights$day==1))

filter(flights,flights$year==2013,flights$month==7)

#to displayrow no 1 and 3 with column name year,month ,dep_time
flights[c(1,3),c('year','month','dep_time')]  
head(flights,3)
head(flights,-3)
arrange(flights,month)
#............
z<-arrange(flights,(dep_delay)) 
z
z$arr_delay
df_sorte_desc<-arrange(flights,desc(arr_delay))
df_sorte_desc

# order by arr_delay with columns between year and dep_time
select(flights,year:dep_time)
colnames(flights)
select(flights,dep_time:arr_delay)
 #year,month,dep_time,sched_dep_time
head(select(flights,1:5,-3))
#then display all records belongs to month no 5
filter(flights,flights$month==5)
#......create new column

library('dplyr')
y<-mutate(flights,
       gain=arr_delay - dep_delay,
       speed= distance / air_time*60)

colnames(flights)
colnames(y)
 
#.......creating new column name gain and gain_per_hour

z<-mutate(flights,
          gain=arr_delay - dep_delay,
          gain_per_hour= gain / (air_time/60))
colnames(z)
z[c('gain','gain_per_hour')]
