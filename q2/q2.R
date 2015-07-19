x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)

lm.1 <- lm(y ~x)
summary(lm.1)

data(mtcars)

lm.2 <- lm(mpg ~wt, data=mtcars)
summary(lm.2)

predict(lm.2, newdata = data.frame(wt = mean(mtcars$wt)), interval=("confidence"))

predict(lm.2, newdata = data.frame(wt = 3), interval=("prediction"))

summary(lm.2)
lm.3 <- lm(mpg ~ I(wt / 2), data=mtcars)
confint(lm.3)

lm.4 <- lm(y ~x -1)
sum(resid(lm.4))

lm.5 <- lm(mpg ~ 1, data=mtcars)

sum(resid(lm.2))/sum(resid(lm.5))

x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)

summary(lm.1)
x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62) +1

lm.6 <- lm(y~x)
summary(lm.6)


