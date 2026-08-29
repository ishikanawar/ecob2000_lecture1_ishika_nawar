x <- 1:50
w <- 1 + sqrt(x)/2
example1 <- data.frame(x=x, y= x + rnorm(x)*w)
attach(example1)
fm <- lm(y ~ x)
summary(fm)
## 
## Call:
## lm(formula = y ~ x)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -8.2519 -2.0464 -0.0222  2.5556  8.2224 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  -0.1104     0.9640  -0.115    0.909    
## x             0.9894     0.0329  30.072   <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 3.357 on 48 degrees of freedom
## Multiple R-squared:  0.9496, Adjusted R-squared:  0.9485 
## F-statistic: 904.3 on 1 and 48 DF,  p-value: < 2.2e-16
lrf <- lowess(x, y)
plot(x, y)
lines(x, lrf$y)
abline(0, 1, lty=3)
abline(coef(fm))
detach()
