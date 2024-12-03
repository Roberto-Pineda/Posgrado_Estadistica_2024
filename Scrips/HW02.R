library(repmis)
conjunto<-source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
H.media <- subset(conjunto, conjunto$Altura >= mean(conjunto$Altura))
mean(conjunto$Altura)
H.16 <- subset(conjunto, conjunto$Altura <= 16.5)

# el numero de valores menores a 16.5m es 39 ------------------------------

Vecino.3 <- subset(conjunto, conjunto$Vecinos <= 3)

# el numero de de vecinos iguales o menores a 3 son 26 --------------------

Vecino.4 <- subset(conjunto, conjunto$Vecinos > 4)

# el numero de vecinos mayores a 4 son 11 ---------------------------------

DBH.mean <- subset(conjunto, conjunto$Diametro < mean(conjunto$Diametro))
mean(conjunto$Diametro)

# el numero de valores menores a la media del diametro son de 25  ---------

DBH.16 <- subset(conjunto, conjunto$Diametro > 16)

# el numero de datos de diametro mayores a 16 son de 24 -------------------

spp <- subset(conjunto, conjunto$Especie == "C")

cedrorojo <- subset(conjunto, conjunto$Especie != "C")
DBH.16 <- subset(conjunto, conjunto$Diametro <= 16.9)

# el numero de observaciones menores o iguales a 16.9 es 31 ---------------------

H.18.5 <- subset(conjunto, conjunto$Altura > 18.5)

# el numero observaciones mayores a 18.5 son 2 ----------------------------


# Histogramas -------------------------------------------------------------

hist(conjunto$Altura, xlab = "Altura", ylab = "Frecuencia", main = "Alturas de los Arboles",
     xlim = c(6, 23), ylim = c(0,15), col = "red")

hist(H.media$Altura, xlab = "Altura", ylab = "Frecuencia", main = "Alturas medias de los Arboles",
     xlim = c(13, 23), ylim = c(0,12), col = "darkred")

hist(H.16$Altura, xlab = "Altura", ylab = "Frecuencia", main = "Alturas de H.16",
     xlim = c(7, 18), ylim = c(0,12), col = "skyblue")

hist(conjunto$Vecinos, xlab = "Vecinos", ylab = "Frecuencia", main = "Datos de Vecinos",
     xlim = c(0, 7), ylim = c(0,13), col = "green")

hist(Vecino.3$Altura, xlab = "Vecinos", ylab = "Altura", main = "Alturas de Vecinos.3",
     xlim = c(8, 22), ylim = c(0,10), col = "darkgreen")

hist(Vecino.4$Altura, xlab = "Vecinos", ylab = "Altura", main = "Alturas de Vecinos.4",
     xlim = c(8, 21), ylim = c(0,4), col = "lightgreen")

hist(conjunto$Diametro, xlab = "Diametro", ylab = "Frecuencia", main = "Datos de Diametro de los arboles",
     xlim = c(6, 27), ylim = c(0,13), col = "darkgray")

hist(DBH.mean$Diametro, xlab = "Diametro", ylab = "Frecuencia", main = "Datos de DBH MEDIA",
     xlim = c(6, 18), ylim = c(1,14), col = "black")

hist(DBH.16$Diametro, xlab = "Diametro", ylab = "Frecuencia", main = "Datos de DBH 16",
     xlim = c(6, 15), ylim = c(1,24), col = "brown")


# Media y Desviacion estandar ---------------------------------------------

mean(conjunto$Altura)
sd(conjunto$Altura)
mean(H.media$Altura)
sd(H.media$Altura)
mean(H.16$Altura)
sd(H.16$Altura)
mean(conjunto$Vecinos)
sd(conjunto$Vecinos)
mean(Vecino.3$Vecinos)
sd(Vecino.3$Vecinos)
mean(Vecino.4$Vecinos)
sd(Vecino.4$Vecinos)
mean(conjunto$Diametro)
sd(conjunto$Diametro)
mean(DBH.mean$Altura)
sd(DBH.mean$Altura)
mean(DBH.16$Altura)
sd(DBH.16$Altura)

