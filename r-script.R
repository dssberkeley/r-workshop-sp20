#PART 1 - Syntax 
#1.1 
5 ^ 3 
8 ** 2 + 5 * 9 
40 %% 6

#1.2 
x = 2 ** 4
y = 7 
y = x 
x = '???' #for you to fill in! 
x = x + 1
y
y = '???' #for you to fill in!

#PART 2 
#2.1
a <- c(1, 2, 3, 4)
b = a + 5 
b = '???' #for you to fill in!
c = a * 6
c = '???' #for you to fill in! 

#2.2
x = list(5, 'hi')
y = x + 1 #does this error? 

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
# Open table
load(file = "babies.Rda")

# EDA: Check basic info of table
View(babies)
head(babies)
summary(babies)
mean(babies$age)
mean(babies$age, na.rm=TRUE)
max(babies$age)
min(babies$ht)
class(babies)
class(babies$age)
dim(babies)
nrow(babies)
ncol(babies)

# Data cleaning
babies = na.omit(babies)  # drop rows with NA
rownames(babies) <- NULL  # reset the index / rownames of each row
mean(babies$age)
mean(babies$ht)

# Indexing 
babies$date
babies[[4]]
babies[1, ]
babies[1,4]
babies[1:5, ]
babies[:2, ] # doesn't work
babies[1:2, ]
babies[1:2, 1:5]
babies[1:2, -(1:5)]

# Subsetting
subset(babies, age == 27)
subset(babies, ed == "College")
subset(babies, age == 27 & ed == "College")
subset(babies, age == 27 | ed == "College")


