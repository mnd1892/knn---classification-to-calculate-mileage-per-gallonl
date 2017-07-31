#build test data
testdata <- as.data.frame(read.csv("boston.csv"))

#observe each and every attribute of data
str(testdata)

#built a new data frame to check relationship
checkdata <- data.frame(testdata$crim,testdata$ptratio,testdata$medv)
mean(testdata$crim)
mean(testdata$ptratio)
mean(testdata$medv)
subset(testdata, crim<3 & ptratio<18 & medv>22)

#zones residing near charles river
nrow(subset(testdata, chas==1))

#build a model with all attributes as coefficients
model_all <- lm(medv~crim+zn+indus+chas+nox+rm+age+dis+rad+tax+ptratio+black+lstat,data=testdata)
model_all <- lm(medv~zn+indus+nox+rm+age+dis+rad+ptratio+black+lstat,data=testdata)

#build model with significant attributes
model_speicific <- lm(medv~zn+indus+nox+rm+age+dis+rad+ptratio+black+lstat,data=testdata)

#build scatter plot and correlation matrices
cor(testdata[c("zn","indus","nox","rm","age","dis","rad","ptratio","lstat","black","medv")])
pairs(testdata[c("zn","indus","nox","rm","age","dis","rad","ptratio","lstat","black","medv")])

#by observing linearity in data i have selected specific attributes
model_new <- lm(medv~nox+rm+age+dis+ptratio+black+lstat,data=testdata)


