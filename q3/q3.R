data(mtcars)
with(mtcars)

#1
lm.1 <- lm(mpg ~ factor(cyl) + wt, data=mtcars)

coef(lm.1)

#2
lm.2 <- lm(mpg ~ I(factor(cyl)), data=mtcars)
coef(lm.2)

#3
require(lmtest)
lm.3 <- lm(mpg ~ wt + factor(cyl) +  wt:factor(cyl), data=mtcars)
anova(lm.1, lm.3)

summary(lm.3)

#5/6
x <- c(0.586, 0.166, -0.042, -0.614, 11.72)
y <- c(0.549, -0.026, -0.127, -0.751, 1.344)

hatvalues(lm(y~x))
dfbetas(lm(y~x))
