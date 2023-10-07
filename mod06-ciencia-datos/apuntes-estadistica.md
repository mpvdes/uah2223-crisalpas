# Estadística básica con Alejandro Zappala
### 28 y 29 de marzo de 2023

#### Conceptos básicos
Es importante distinguir las variables que vamos a usar y, por lo tanto, controlar los conceptos.
Si dividimos una muestra en intervalos, su **marca de clase** será la media entre los dos valores del intervalo. Estas marcas tienen como ventaja que se pueden utilizar en lugar del intervalo completo y nos dan los mismos resultados que si hiciéramos la media de cada número.

El contenido aparece completo en [los apuntes](https://alayzappala.gitlab.io/apuntes-ciencia-datos/), pero, si añadimos información, aparecerá en el documento pruebas-r.Rmd.


# Introducción al análisis de redes con Alejandro Zappala
### 16 de mayo de 2023

Una vez que se toma la decisión de qué es lo que se va a estudiar, se realiza lo que se llama **[scrapping o data mining](https://alayzappala.gitlab.io/introduccion-al-analisis-de-redes/#1)**.


## Scraping of data mining

Herramientas como Data Miner o Tabula ayudan en el proceso de extracción de datos. La programación mediante Python o R también ayuda en el proceso del escrapeo, lo que, de hecho, permite scrapear de forma gratuita con menor límite que las páginas de scrapeo.


## Limpieza y modelado

Tras pasar por la extracción de los datos, se avanza al proceso de limpieza y modelado, necesario para que puedan ser objeto de análisis estadísticos. Se trata de que estén bien tabulados, lo que se hace siguiendo unas reglas determinadas para nombrar columnas:

- No emplear palabras separadas por espacios.
- No usar signos de puntuación ni acentos (como mucho guion bajo).

Para ello podemos utilizar herramientas ofimáticas de edición de tablas, como Excel o Libreoffice, pero la RAM puede tener problemas con grandes volúmenes de datos. También se puede usar OpenRefine o los propios Jupyter y R.


## Análisis de datos inicial

Tableau, Datawrapper, Infogram, Dipity... son algunas herramientas que nos permiten analizar los datos con unas primeras visualizaciones que incluso pueden llegar a formar parte de los artículos periodísticos (por ejemplo, con Datawrapper).

Un ejemplo de las técnicas de análisis es el TFIDF (Term Frequency-Inverse Documente Frequency), que se usa para valorar la importancia de los términos que se repiten dentro de una colección de documentos o para extraer las palabras clave en páginas web. También permite categorizar o comparar documentos y consultar la información para jerarquizar resultados.


## Visualización de redes

Para visualizar redes, la herramienta más conocida es **Gephy**. Para esta aplicación necesitamos estructurar los datos en una tabla de nodos (*nodes*), identificados con números enteros únicos, y en otra tabla de aristas (*edges*), que relacionan pares de nodos.

Con ese objetivo se usa software como el de table2net o las herramientas de programación como R o Python.

A partir de las conclusiones obtenidas en todo el proceso, se pueden tomar decisiones al respecto. Sobre todo si los datos analizados son suficientes para tener relevancia y si son fiables.

**OJO** No olvidar nunca documentar todo el proceso.


## Práctica con RStudio

Usamos el documento analisis-redes.Rmd. 
