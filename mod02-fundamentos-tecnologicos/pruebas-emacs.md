# Pruebas Emacs

## Comandos básicos y atajos de teclado

Tenemos que activar el modo markdown. Podemos hacerlo con la tecla alt, que ejecuta acciones sobre el programa. Por ejemplo

**alt + x**

A partir de ahí ya podemos empezar a utilizar las funciones de emacs. Con 

**ctrl + x**

entramos en el modo de interacción con Emacs. Para ir al archivo que queramos, tras pulsar ctrl + x, pulsamos

**ctrl + f**

Ásí buscamos la carpeta deseada.

Posteriormente, podemos utilizar

**ctrl + x**

y pulsar
 
**3**

para dividir la pantalla en dos y poder tener abiertos dos archivos distintos de forma simultánea, por ejemplo, un index.html y el style.css. Si queremos cambiar entre ambos archivos pulsamos

**ctrl + x**

y la letra 

**o**

Así podemos cambiar entre archivos.

En el caso de querer comentar alguna línea, nos posamos sobre la línea y pulsamos

**alt + shift + ;**

Además, para pegar contenido usamos

**ctrl + x**

y la letra

**u**

Si lo que queremos es abortar alguna orden que estamos dando a través de un comando, pulsamos:

**ctrl + g**

o bien pulsamos la tecla **Esc** tres veces

Si lo que queremos es añadir un párrafo con lorem ipsum, usamos

**alt + x**

y escribes los comandos para insertar párrafos. En este caso, se escribiría

**lorem-ipsum**

Si queremos plegar el contenido que ya hemos trabajado, por ejemplo, incluido en unos div, pulsamos

**ctrl + c**

**ctrl + f**

Así se puede visualizar mejor el código.


## Cómo insertar elementos directamente en Emacs

Con el atajo de teclado

**ctrl + c**

**ctrl + e**

**i**

escribiendo los tres seguidamente, podemos ordenar que nos inserte determinados elementos (como div, p...).

Si lo que queremos en su lugar es que nos inserte algún atributo, pulsamos

**ctrl + c**

**ctrl + a**

**i**

Si queremos que nos duplique algún elemento, situándonos sobre él pulsamos

**ctrl + c**

**ctrl + e**

**c**

y nos lo copiaría debajo.

Si quisiéramos anidar algunos de esos elementos dentro de una sección, haríamos

**ctrl + c**

**ctrl + e**

**w**

y llamamos al elemento en el que queremos encerrar eso section.


## Cómo iniciar un servidor

Para ver lo que llevamos hecho hasta ahora de la web, podemos hacerlo o bien desde cygwin con:

**python -m http.server 8080 --bind 127.0.0.1**

y se copia el enlace y se pega en el navegador.

O directamente desde Emacs:

**alt + x**

**http-serve-directory**

En ese momento, te preguntará en qué directorio quieres servirlo, y como saldrá el actual, basta con darle a enter. Para verlo, nos vamos al navegador y, con el puerto que nos haya dado, escribimos:

**localhost:8080** 


