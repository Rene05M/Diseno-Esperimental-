df=read.csv("sprays.csv")
df

str(df)

df$Marca=as.factor(df$Marca)
str(df)

boxplot(Y~Marca,data=df)

modelo=aov(Y~Marca,data=df)
summary(modelo)

1-pf(2.793,2,15)

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)

library.("Car")

leveneTest(Y~Marca,data=df)

plot(modelo$residuals)
plot(df$Marca,modelo$residuals)
plot(modelo$fitted.values,modelo$residuals)
abline(h=0)

