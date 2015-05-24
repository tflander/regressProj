
```r
fit <- lm(mpg ~ wt + disp + wt * disp, data=mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ wt + disp + wt * disp, data = mtcars)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -3.267 -1.677 -0.836  1.351  5.017 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 44.081998   3.123063  14.115 2.96e-14 ***
## wt          -6.495680   1.313383  -4.946 3.22e-05 ***
## disp        -0.056358   0.013239  -4.257  0.00021 ***
## wt:disp      0.011705   0.003255   3.596  0.00123 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.455 on 28 degrees of freedom
## Multiple R-squared:  0.8501,	Adjusted R-squared:  0.8341 
## F-statistic: 52.95 on 3 and 28 DF,  p-value: 1.158e-11
```

```r
## 
## Call:
## lm(formula = mpg ~ wt + disp + am, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -3.4890 -2.4106 -0.7232  1.7503  6.3293 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 34.675911   3.240609  10.700 2.12e-11 ***
## wt          -3.279044   1.327509  -2.470   0.0199 *  
## disp        -0.017805   0.009375  -1.899   0.0679 .  
## am           0.177724   1.484316   0.120   0.9055    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.967 on 28 degrees of freedom
## Multiple R-squared:  0.781,  Adjusted R-squared:  0.7576 
## F-statistic: 33.29 on 3 and 28 DF,  p-value: 2.25e-09
```

