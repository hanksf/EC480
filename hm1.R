# Homework Assignment 1
library(foreign)
mydata <- read.dta("C:/Users/Fergal/Documents/Northwestern/EC_480/Manski/INPUTM12.dta")

mydata$a <- (mydata$f +mydata$m)/2

fit <- lm(y ~ a, data=mydata)
summary(fit)

alpha <- 2:1; coefficients(lm(y ~ a, data=mydata))
beta <- 2:2; coefficients(lm(y ~ a, data=mydata))

fitted(fit)


dens