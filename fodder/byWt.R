meanWt <- mean(mtcars$wt)

# TODO:  watch more videos to see how to calculate the intercept.

fitTotal <- lm(mpg~wt, data=mtcars)
fitTotalMeanIc <- lm(mpg~I(wt-meanWt), data=mtcars)

beta1Total <- coef(fitTotal)[2]
icTotal  <- coef(fitTotal)[1]
icTotalByMean  <- coef(fitTotalMeanIc)[1]

manual <- mtcars[mtcars$am==1,]
automatic <- mtcars[mtcars$am==0,]

# fitManual <- lm(mpg~wt, data=manual)
# beta1Manual <- coef(fitManual)[2]
# icManual  <- coef(fitManual)[1]
# 
# fitAutomatic <- lm(mpg~wt, data=automatic)
# beta1Automatic <- coef(fitAutomatic)[2]
# icAutomatic  <- coef(fitAutomatic)[1]

# > icAutomatic
# (Intercept) 
# 31.41606 
# > icManual
# (Intercept) 
# 46.29448 
# > icTotal
# (Intercept) 
# 37.28513 
# > icAutomatic - icManual
# (Intercept) 
# -14.87842 

# > meanWt
# [1] 3.21725

fitManual <- lm(mpg~I(wt-meanWt), data=manual)
beta1Manual <- coef(fitManual)[2]
icManual  <- coef(fitManual)[1]

fitAutomatic <- lm(mpg~I(wt-meanWt), data=automatic)
beta1Automatic <- coef(fitAutomatic)[2]
icAutomatic  <- coef(fitAutomatic)[1]

# icAutomatic - icManual
# (Intercept) 
# 2.167728 

library(ggplot2)
g = ggplot(mtcars, aes(x=wt, y=mpg))
g = g + geom_point(size=6, color="black", alpha=0.2)
g = g + xlab("weight (1,000 pounds)") + ylab("MPG")
g = g + geom_point(size=6, color="black", alpha=0.2)
g = g + geom_point(size=5, color="blue", alpha=0.2)
g = g + geom_smooth(method="lm", color="black")
g = g + geom_abline(intercept=icManual+icTotal-icTotalByMean, slope=beta1Total)
g = g + geom_abline(intercept=icAutomatic+icTotal-icTotalByMean, slope=beta1Total)
print(g)


