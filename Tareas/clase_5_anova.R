#clase ANOVA

sitios <- read.csv("Datos_Rascon_Anova.csv", header = T)

boxplot( sitios$DAP ~ sitios$Paraje,
         xlab = "paraje",
         ylab =  "diametro")

tapply(sitios$DAP, sitios$Paraje, mean)
tapply(sitios$DAP, sitios$Paraje, var)

tapply(sitios$EDAD, sitios$Paraje, mean)

boxplot( sitios$EDAD ~ sitios$Paraje, 
     xlab = "paraje",
     ylab = "Edad")

shapiro.test(sitios$DAP)
bartlett.test(sitios$DAP ~ sitios$Paraje)

# los datos de DAP no son normales, aunque su varianza si es homogenea

sitios$dap_t <- sqrt(sitios$DAP)

shapiro.test(sitios$dap_t)

boxplot(sitios$dap_t ~ sitios$Paraje)

mean(sitios$dap_t^2)
mean(sitios$DAP)

sit.aov <- aov (sitios$dap_t ~ sitios$Paraje)
summary(sit.aov)

TukeyHSD(sit.aov)
plot(TukeyHSD(sit.aov))

