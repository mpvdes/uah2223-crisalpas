# Ciencia de datos
# Tema 1
# Ejercicio 3
# Cristina Alonso Pascual


# Almacena los siguientes conjuntos de datos en un vector

# a. 1/2, 1/3, 1/4, 1/5, 1/6, 1/7, 1/8, 1/9, 1/10

v1 <- c(1/2, 1/3, 1/4, 1/5, 1/6, 1/7, 1/8, 1/9, 1/10)

v1

# también se podría hacer con una operación

v1 <- 1/(2:10)

v1


# b. 1, 8, 27, 64, 125, 216

v2 <- c(1, 8, 27, 64, 125, 216)

v2

# también se puede hacer con una operación

v2 <- (1:6)^3

v2


# c. 0, 25, 50, 75, …, 1000 (de 0 a 1000 de 25 en 25)
  
v3 <- seq(0, 1000, by=25)

v3

