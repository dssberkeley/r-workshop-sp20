#PART 1 - Syntax 
#1.1 
5 ^ 3 
8 ** 2 + 5 * 9 
40 %% 6

#1.2 
x <- 2 ** 4
y <- 7 
y <- x 
x <- '???' #for you to fill in! 
x <- x + 1
y
y <- '???' #for you to fill in!


#PART 2 
#2.1
a <- c(1, 2, 3, 4)
b <- a + 5 
b <- '???' #for you to fill in!
c <- a * 6
c <- '???' #for you to fill in! 

#2.2
x <- list(5, 'hi')
y <- x + 1 #does this error? 

#2.3
#if you don't know what a function does, feel free to look it up with '?'
?mean
mean(a)
median(a)
abs(-5)
sqrt(25)
round(5.555555, digits = 3)
ceiling(3.75)
floor(3.75)


#PART 3 - Data Frames (Tables)
# 3.1 Loading & Exploring Data
read.csv("r-workshop-sp20/babies.csv")
View(babies)
head(babies)
summary(babies)

dim(babies)
nrow(babies)
ncol(babies)
names(babies)
babies$age

mean(babies$age)
mean(babies$age, na.rm = TRUE)
max(babies$age, na.rm = TRUE)
min(babies$ht, na.rm = TRUE)

# Exercises
babies$date
length(babies$date)
head(babies$age)


# 3.2 Data cleaning
babies <- na.omit(babies)  # drop rows with NA
dim(babies)
head(babies)
rownames(babies) <- NULL  # reset the index / rownames of each row
head(babies)

mean(babies$age)
max(babies$age)
min(babies$age)

# 3.3 Indexing 
babies$date

babies[[4]]

babies[ , 4]
babies[1, 4]
babies[2:5, 2:3]

babies[, "date"]
babies["1","date"]
babies[2:5, c("pluralty", "outcome")]

babies$date
babies[[4]]
babies[ , 4]
babies[, "date"]
names(babies)
babies[1:5, ]

# Exercises
babies[, 2:5]
babies[3, 1:4]
babies[1:5, 3]

# 3.4 Subsetting & Filtering
subset(babies, age == 27)
subset(babies, ed == "College")
subset(babies, age == 27 & ed == "College")
subset(babies, age <= 20 | age >= 30)
babies[babies$sex == 1, ]
babies[babies$sex == 1, "sex"] <- "male"

# Exercises
# (Write your script here)

# 3.5 Aggregating
aggregate(babies, list(Smoke = babies$smoke), mean)
aggregate(babies$bwt, list(Smoke = babies$smoke), median)
aggregate(babies[, c('bwt', 'gestation')], list(Ed = babies$ed), mean)
aggregate(babies[, c('bwt', 'gestation')], list(Ed = babies$ed, Smoke = babies$smoke), mean)


#Part 4 
#Extra-for fun! 
plot(babies$wt, babies$ht)
#ggplot makes beautiful graphs and charts! 
library(ggplot2)
#Histogram of Parity
ggplot(data=babies, mapping =aes(x = parity))+
  geom_histogram(aes(y = ..density..),breaks =c(seq(-0.5, 7.5, by = 1), 10.5, 13.5),col = "green", fill = "grey", alpha = 0.4)+
  labs(x = "Parity (number of previous pregnancies)")
#Father's Height vs Mother's Height
ggplot(data=babies, mapping =aes(x = ht, y=dht, color='red'))+
  geom_jitter()+labs(x="Mother's Height (in)",y = "Father's Height (in)",title = "Scatter plot of Mothers and Fathers")
