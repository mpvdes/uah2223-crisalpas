# Movernos a la carpeta de trabajo
setwd("C:/Users/crisa/Documents/mpvd/uah2223-crisalpas/charlas")

# Cargar librerías / paquetes
#install.packages("tidyverse")
library(tidyverse)
#install.packages("rvest")
library(rvest)
#install.packages("xml2")
library(xml2)


## 0 ## --------- Scrapear el código entero de la web
web_nominados <- read_html("https://www.premiosgoya.com/36-edicion/nominaciones/por-categoria/")

# Vemos el código html
web_nominados

## 1 ## --------- Sacar listado de las categorías de premios (28)
# A partir del objeto donde tenemos el HTML entero [web_nominados],
# seleccionamos los elementos con el contenido que buscamos
# (usar extensión Selector Gadget o mirar en el código fuente)

categorias_html <- html_elements(web_nominados, ".categoria-de-peliculas__titulo")


# Extraer el texto del contenido

categorias <- html_text(categorias_html)


# Todo junto queda así:

categorias <- web_nominados %>%
  html_elements(".categoria-de-peliculas__titulo") %>%
  html_text()

print(categorias)




## 2 ## --------- Sacar listado de URLS de los carteles de las películas nominadas (114)

# A partir del objeto donde tenemos el HTML entero [web_nominados],
# seleccionamos los elementos que contienen los enlaces de la imágenes de los carteles

carteles_htmls <- html_elements(web_nominados, ".lista-de-peliculas__cartel img")

# Queremos el enlace que va dentro del atributo "src"

carteles <- html_attr(carteles_htmls, "src")

# Todo junto queda así:

carteles <- web_nominados %>%
  html_elements(".lista-de-peliculas__cartel img") %>%
  html_attr("src")

print(carteles)




## 3 ## --------- Sacar listado de películas nominadas a la Mejor Dirección (5)

# A partir del objeto donde tenemos el HTML entero [web_nominados],
# seleccionamos el elemento que contiene todas las películas que buscamos.
# En este caso, el primero [[1]]

peliculasmd_htmlentero <- html_elements(web_nominados, ".categoria-de-peliculas")[[1]]

print(peliculasmd_htmlentero)

# Seleccionamos los elementos que contienen cada película, por separado

peliculasmd_htmldividido <- html_elements(peliculasmd_htmlentero, ".lista-de-peliculas__titulo")

print(peliculasmd_htmldividido)

# Nos queremos quedar sólo con el elemento 'hijo', ya que ahí está el texto del nombre de la película

peliculasmd_elementos <- html_children(peliculasmd_htmldividido)

print(peliculasmd_elementos)

# Extraer el texto del contenido

peliculasmd_contenido <- html_text(peliculasmd_elementos)

print(peliculasmd_contenido)

# Quitar los espacios en blanco, ya que al imprimir vemos que salen espacios
# Usamos print white spaces

peliculasmd <- trimws(peliculasmd_contenido)

print(peliculasmd)

# Todo junto queda así:

peliculasmd <- html_elements(web_nominados, ".categoria-de-peliculas")[[1]] %>%
  html_elements(".lista-de-peliculas__titulo") %>%
  html_children() %>%
  html_text() %>% trimws()

print(peliculasmd)


## 4 ## Extraer las películas nominadas a mejor dirección novel

# A partir del objeto donde tenemos el HTML entero [web_nominados],
# seleccionamos el elemento que contiene todas las películas que buscamos.
# En este caso, el tercero [[3]]

peliculasdn_htmlentero <- html_elements(web_nominados, ".categoria-de-peliculas")[[3]]

print(peliculasdn_htmlentero)

# Seleccionamos los elementos que contienen cada película, por separado

peliculasdn_htmldividido <- html_elements(peliculasdn_htmlentero, ".lista-de-peliculas__texto")

print(peliculasdn_htmldividido)

# Nos queremos quedar sólo con el elemento 'hijo', ya que ahí está el texto del nombre de la película

peliculasdn_elementos <- html_children(peliculasdn_htmldividido)

print(peliculasdn_elementos)

# Extraer el texto del contenido

peliculasdn_contenido <- html_text(peliculasdn_elementos)

print(peliculasdn_contenido)

# Todo junto

peliculasdn <- html_elements(web_nominados, ".categoria-de-peliculas")[[3]] %>%
  html_elements(".lista-de-peliculas__texto") %>%
  html_children() %>%
  html_text()

print(peliculasdn)

# También se puede omitir el paso de html children, porque el elemento es p
# entonces ya podemos pedírselo directamente tal que así:

peliculasdn <- html_elements(web_nominados, ".categoria-de-peliculas")[[3]] %>%
  html_elements(".lista-de-peliculas__texto p") %>%
  html_text()

print(peliculasdn)
