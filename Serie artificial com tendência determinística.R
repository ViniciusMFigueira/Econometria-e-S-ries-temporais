x <- ts(rnorm(300)) # gera como ts
tr <- ts(1:300)
y = 8 + 0.5*tr + x
yh <- lm(y~tr) %>% residuals()
par(mfrow=c(3,1))
ts.plot(y)
ts.plot(yh)
yh %>% acf()