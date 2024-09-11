# Ejercicio Datos de madera MET


# Importar datos

url <- "https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"

madera <- read.csv(url, header = T)
View(madera)

# Hipotesis nula y hipotesis alternativa 
# H0: no se encuentra diferencia entre el peso de Gavia y Barreta
# H1: si se encuentra diferencia entre el peso de Gavia y Barreta

# Inspeccion grafica 

madera$Especie <- as.factor(madera$Especie)

boxplot(madera$Peso_g ~ madera$Especie,
        xlab = "niveles de factor",
        ylab = "peso en gramos")

# Estadistica descriptiva de la variable peso
tapply(madera$Peso_g, madera$Especie, mean)
tapply(madera$Peso_g, madera$Especie, var)
# la varianza de las especies Gavia es 7 veces mayor que el peso de Barreta


# ¿cuantos niveles de factor existen?
# existen dos niveles de factor siendo estos "Especies: Barreta y Agavia"

# Prueba aplicada

shapiro.test(madera$Peso_g)
bartlett.test(madera$Peso_g ~ madera$Especie) 
madera$peso_t <- log(madera$Peso_g + 1)

boxplot(madera$peso_t ~ madera$Especie)
tapply(madera$peso_t, madera$Especie, var)

t.test(madera$Peso_g ~ madera$Especie, var.equal = F)
t.test(madera$Peso_g ~ madera$Especie, var.equal = T)

# Aceptar H0 o H1
# se rechaza la hipotesis nula, ya que el peso de la Gavia es mayor 
# al de la Barreta 