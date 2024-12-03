# codigo de pregunta 15 & 16

set.seed(42) 
n <- 30
altura <- rnorm (n, mean = 170, sd = 10)
peso  <- 0.5* altura+rnorm (n, mean = 0, sd = 5)
t.test (altura, peso)

# H0:no hay difertencias entre las alturas 
# H1 hay diferencia entre las altura 

# se rechaza la hipotesis alternativa y se acepta la hipotesis nula, ya que si existen diferencias 

# pregunta 17 y 18 
cor.test(altura, peso)

# la p calculada es menor a 0.05 por lo que la altura y el peso son significativos entre si


# codigo de las preguntas 19 & 20

set.seed(25)
n <- 40
diam_arboles <- rnorm (n, mean = 20, sd = 5)
altura_arboles <- 1.5* diam_arboles+rnorm (n, mean = 0, sd = 3)
datos <- data.frame(diam_arboles, altura_arboles)

ed.lm <- lm(diam_arboles ~ altura_arboles)
ed.lm

datos.lm <- lm(datos)
datos.lm

# el valor de Alfa es de 2.1209 y Beta de 0.6035