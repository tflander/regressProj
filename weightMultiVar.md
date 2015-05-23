> names(mtcars)
 [1] "mpg"  "cyl"  "disp" "hp" "qsec" "vs"   "am"  
[10] "gear" "carb"


```r
# Regress the given variable on the given predictor,
# suppressing the intercept, and return the residual.
regressOneOnOne <- function(predictor, other, dataframe){
  # Point A. Create a formula such as Girth ~ Height -1
  formula <- paste0(other, " ~ ", predictor, " - 1")
  # Use the formula in a regression and return the residual.
  resid(lm(formula, dataframe))
}

# Eliminate the specified predictor from the dataframe by
# regressing all other variables on that predictor
# and returning a data frame containing the residuals
# of those regressions.
eliminate <- function(predictor, dataframe){
  # Find the names of all columns except the predictor.
  others <- setdiff(names(dataframe), predictor)
  # Calculate the residuals of each when regressed against the given predictor
  temp <- sapply(others, function(other)regressOneOnOne(predictor, other, dataframe))
  # sapply returns a matrix of residuals; convert to a data frame and return.
  as.data.frame(temp)
}

manual <- mtcars[mtcars$am==1,]
automatic <- mtcars[mtcars$am==0,]
meanWt <- mean(mtcars$wt)

carsNoWt <- eliminate("wt", mtcars)
automaticNoWt <- eliminate("wt", automatic)
manualNoWt <- eliminate("wt", manual)

fitAll <- lm(mpg ~ cyl, carsNoWt)
fitA <-  lm(mpg ~ cyl, automaticNoWt)
fitM <-  lm(mpg ~ cyl, manualNoWt)
```
