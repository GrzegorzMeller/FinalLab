#ex 1
library(np)
library(classInt) #not sure if needed
data("wage1")
male_wage <- wage1$wage[which(wage1$female == "Male")]
limits<-c(0, 3.2, 4, 5, 6, 7.5, 9, 11.5, 14.5, 25)
table<-classIntervals(male_wage,n=9, style="fixed", fixedBreaks=limits, intervalClosure = 'right')
#ew po prostu: table<-classIntervals(male_wage, style='jenks')
jenks.tests(table)

#ex 2
library(wooldridge)
library(moments)
data("wage2")

Modemy <- function(x) {
  ux <- unique(x)
  ux <- ux[which.max(tabulate(match(x, ux)))]
  return(ux)
}


Ku <- function (x) {
  output <- 0
  for (i in x)
  {
    output <- output + (i - mean(x)) ^ 4
  }
  output <- output / (length(x) * sd(x) ^ 4 ) - 3
  return (output)
}

x<-wage2$IQ
cat( "Arithmetic mean:" ,mean(x, na.rm = TRUE), "\n" )
cat( "Variance:" , var(x), "\n" )
cat( "Standard deviation:" , sd(x, na.rm= TRUE ), "\n" )
cat( "Mode:" , Modemy(x), "\n" )
cat( "Median:" , median(x), "\n" )

cat( "1st quartile:" , quantile(x, 0.25 ), "\n" )
cat( "3rd quartile:" , quantile(x, 0.75 ), "\n" )
cat( "Range:" , range(x)[ 2 ] - range(x)[ 1 ], "\n" ) 
cat("Coefficient of variablitity:",(sd(x, na.rm = TRUE)/mean(x, na.rm = TRUE))*100,"\n")
cat( "95th percentile:" , quantile(x, 0.95 ), "\n" ) 


cat( "Interquartile deviation:" , IQR(x)/2, "\n" ) 
cat( "Interquartile coefficient of variation (%):" , ((IQR(x)/2)/median(x)) * 100, "\n" )
cat( "Fourth moment kurtosis:" , Ku(x), "\n" )
cat("IQR:", IQR(x),"\n")
cat( "Pearson's skewness:" , 3*(as.numeric(mean(x, na.rm = TRUE)) - as.numeric(median(x)))/ sd(x, na.rm = TRUE), "\n" ) 

#ex 3
library(leaps)
library(Ecdat)

model1 <- lm(wage2$wage ~ ., data = wage2)
step(model1, direction="both")
summary(model1)
plot(model1)
AIC(model1)

#biblioteka od sprawdzania zalozen liniowosci
library(gvlma)
gvlma(model1)
