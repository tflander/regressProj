> names(mtcars)
 [1] "mpg"  "cyl"  "disp" "hp" "qsec" "vs"   "am"  
[10] "gear" "carb"


```r
fit <- lm(mpg~wt+cyl, data=mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ wt + cyl, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -4.2893 -1.5512 -0.4684  1.5743  6.1004 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  39.6863     1.7150  23.141  < 2e-16 ***
## wt           -3.1910     0.7569  -4.216 0.000222 ***
## cyl          -1.5078     0.4147  -3.636 0.001064 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.568 on 29 degrees of freedom
## Multiple R-squared:  0.8302,	Adjusted R-squared:  0.8185 
## F-statistic: 70.91 on 2 and 29 DF,  p-value: 6.809e-12
```

```r
fit <- lm(mpg~wt+disp, data=mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ wt + disp, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -3.4087 -2.3243 -0.7683  1.7721  6.3484 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 34.96055    2.16454  16.151 4.91e-16 ***
## wt          -3.35082    1.16413  -2.878  0.00743 ** 
## disp        -0.01773    0.00919  -1.929  0.06362 .  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.917 on 29 degrees of freedom
## Multiple R-squared:  0.7809,	Adjusted R-squared:  0.7658 
## F-statistic: 51.69 on 2 and 29 DF,  p-value: 2.744e-10
```

```r
fit <- lm(mpg~wt+hp, data=mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ wt + hp, data = mtcars)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -3.941 -1.600 -0.182  1.050  5.854 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 37.22727    1.59879  23.285  < 2e-16 ***
## wt          -3.87783    0.63273  -6.129 1.12e-06 ***
## hp          -0.03177    0.00903  -3.519  0.00145 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.593 on 29 degrees of freedom
## Multiple R-squared:  0.8268,	Adjusted R-squared:  0.8148 
## F-statistic: 69.21 on 2 and 29 DF,  p-value: 9.109e-12
```

```r
fit <- lm(mpg~wt+qsec, data=mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ wt + qsec, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -4.3962 -2.1431 -0.2129  1.4915  5.7486 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  19.7462     5.2521   3.760 0.000765 ***
## wt           -5.0480     0.4840 -10.430 2.52e-11 ***
## qsec          0.9292     0.2650   3.506 0.001500 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.596 on 29 degrees of freedom
## Multiple R-squared:  0.8264,	Adjusted R-squared:  0.8144 
## F-statistic: 69.03 on 2 and 29 DF,  p-value: 9.395e-12
```

```r
fit <- lm(mpg~qsec, data=mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ qsec, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -9.8760 -3.4539 -0.7203  2.2774 11.6491 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)  
## (Intercept)  -5.1140    10.0295  -0.510   0.6139  
## qsec          1.4121     0.5592   2.525   0.0171 *
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 5.564 on 30 degrees of freedom
## Multiple R-squared:  0.1753,	Adjusted R-squared:  0.1478 
## F-statistic: 6.377 on 1 and 30 DF,  p-value: 0.01708
```

```r
fit <- lm(mpg~wt+vs, data=mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ wt + vs, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -3.7071 -2.4415 -0.3129  1.4319  6.0156 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  33.0042     2.3554  14.012 1.92e-14 ***
## wt           -4.4428     0.6134  -7.243 5.63e-08 ***
## vs            3.1544     1.1907   2.649   0.0129 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.78 on 29 degrees of freedom
## Multiple R-squared:  0.801,	Adjusted R-squared:  0.7873 
## F-statistic: 58.36 on 2 and 29 DF,  p-value: 6.818e-11
```

```r
fit <- lm(mpg~wt+gear, data=mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ wt + gear, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -4.1304 -2.3061 -0.2932  1.4409  6.8296 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  38.9157     5.0974   7.634 2.04e-08 ***
## wt           -5.4850     0.6987  -7.851 1.17e-08 ***
## gear         -0.3196     0.9265  -0.345    0.733    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 3.092 on 29 degrees of freedom
## Multiple R-squared:  0.7538,	Adjusted R-squared:  0.7369 
## F-statistic: 44.41 on 2 and 29 DF,  p-value: 1.488e-09
```

```r
fit <- lm(mpg~wt+carb, data=mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ wt + carb, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -4.5206 -2.1223 -0.0467  1.4551  5.9736 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  37.7300     1.7602  21.435  < 2e-16 ***
## wt           -4.7646     0.5765  -8.265 4.12e-09 ***
## carb         -0.8215     0.3492  -2.353   0.0256 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.839 on 29 degrees of freedom
## Multiple R-squared:  0.7924,	Adjusted R-squared:  0.7781 
## F-statistic: 55.36 on 2 and 29 DF,  p-value: 1.255e-10
```
