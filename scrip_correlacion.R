# correlacion 

library(repmis)
edad <- source_data("https://www.dropbox.com/s/nxoijhgmutuho0s/datos_control_Rascon.csv?dl=1")

summary(edad)

plot(edad$DAP, edad$EDAD, pch = 19, col = "skyblue",
     xlab = "Diametro (cm)",
     ylab = "Edad",
     ylim = c(20,140),
     xlim = c(10,50))

cor.test(edad$DAP, edad$EDAD)

# Regresion lineal 

ed.lm <- lm(edad$EDAD ~ edad$DAP)
# solo obterner el intercepto (alfa) y la beta
ed.lm

# para obtener significacia aplico summary
summary(ed.lm)

plot(edad$DAP, edad$EDAD, pch = 19, col = "skyblue",
     xlab = "Diametro (cm)",
     ylab = "Edad",
     ylim = c(20,140),
     xlim = c(10,50))
abline(ed.lm)
text(20, 120, "y = -8.4 * 2.4(x)")


ed.lm$coefficients
ed.lm$residuals
edad$res <- ed.lm$residuals
edad$edprim <- ed.lm$fitted.values
edad$com.res <- edad$EDAD - edad$edprim
sum (edad$res)
sum (edad$res^2)/58

# Estimar la edad (prima) para los valores de DAP: 15,30,45,47
valores <- c(15, 30, 45, 47)
prima <- -8.4 + 2.4 *(valores)   
prima
