
manual <- mtcars[mtcars$am==1,]
automatic <- mtcars[mtcars$am==0,]

fitRow <- function(predictor) {
  fitAll <- lm(mtcars$mpg ~ mtcars[predictor][,1])
  fitManual <- lm(manual$mpg ~ manual[predictor][,1])
  fitAutomatic <- lm(automatic$mpg ~ automatic[predictor][,1])
  
  r <- data.frame(
    coef(fitAll)[1],
    coef(fitAll)[2],
    coef(fitManual)[1],
    coef(fitManual)[2],
    coef(fitAutomatic)[1],
    coef(fitAutomatic)[2],
    summary(fitAll)$r.squared,
    cor(fitAll$model[1], fitAll$model[2]),
    summary(fitAll)$coefficients[1,4],
    summary(fitAll)$coefficients[2,4]
  )
  
  names(r) <- c("icTotal", "beta1Total", 
                "icManual", "beta1Manual", 
                "icAutomatic", "beta1Automatic", 
                "r^2", "cor",
                "icPVal", "beta1PVal")
  row.names(r) <- predictor
  
  r
}


modelRow <- function(col) {
  names(col)
}

candidateModels <- rbind(
  fitRow("cyl"),
  fitRow("disp"),
  fitRow("hp"),
  fitRow("drat"),
  fitRow("wt"),
  fitRow("qsec"),
  fitRow("vs"),
  fitRow("gear"),
  fitRow("carb")
)

# p-values are in the same order as cor and r^2
#wt 1.29e-10 ***
#cyl 6.11e-10 ***
#disp 9.38e-10 ***
#hp 1.79e-07 ***


bestRSquared <- candidateModels[order(-candidateModels$r^2),] 


