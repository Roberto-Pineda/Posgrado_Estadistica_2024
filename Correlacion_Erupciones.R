library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")

summary(erupciones)

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "tiempo entre erupcion",
     ylab = "tiempo de erupcion")

cor.test(erupciones$waiting, erupciones$eruptions)

#el tiempo de espera y el tiempo de erupcion si son significativos 

er.lm <- lm(erupciones$eruptions ~ erupciones$waiting)
er.lm

summary(er.lm)

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "tiempo entre erupcion",
     ylab = "tiempo de erupcion")
abline(er.lm)

# Alfa (intersecto): -1.87 beta: 0.07
## tanto beta como alfa son significativas 

