# Pruebas con Github

## Para qué sirve Github

Podemos utilizar HTML, por ejemplo, en Github, un hub de repositorios git, es decir, es un espacio donde puedes tener un repositorio git remoto. **Es software abierto y nos permite compartir repositorios (como carpetas) también entre aplicaciones**.

Tú tienes una carpeta en tu ordenador y puedes hacer que Git trabaje con ella, para lo que usas el comando git init. Es una forma de compartir esas carpetas entre múltiples personas y te permite acceder a todas ellas, conociendo el registro de los cambios que se producen en cada repositorio, ya que Git lleva un registro. Es una especie de software de control de versiones.

## Creación de un repositorio

Vamos a crear un repositorio con nuestro nombre (uah2223-crisalpas) y vamos a inicializarlo. Github tiene distintas áreas: una zona con el archivo README, otra con los archivos que se encuentran dentro del repositorio y una línea sobre los diversos archivos que recoge el número de veces que se ha modificado (commit) el repositorio y quién ha realizado la última acción.

Ahora vamos a editar el archivo, cuyo resultado final está [aquí](pruebas-markdown.md). Repasamos cómo agregar elementos en Markdown, incluyendo el texto citado y el texto citado en línea.

Cuando has hecho los cambios deseados, puedes escribir el nombre del commit en commit changes.

## Creación de una página web en Github

Para ello, nos vamos a ajustes (**Settings**) dentro del repositorio concreto de Github (es una imagen de un engranaje con la palabra Settings al lado que se sitúa en la barra de herramientas debajo del enlace del repositorio que está en azul). Una vez dentro de ajustes, a la izquierda, en la columna de herramientas, hay una que se llama **Pages**. Entramos.

Alli, podemos desplegar una web desde el contenido que tenemos en una rama (deploy from a branch). En este caso, va a ser la main, que es la única que tenemos. Luego, seleccionamos la carpeta que queremos. La root, representada por una barra, significa raíz de directorios de un ordenador / . Esto significa que todo el contenido de la página nos lo considerará web.

La diferencia si seleccionas /docs es que pasará a HTML solo el contenido HTML, mientras que al seleccionar / o root **puedes tener tanto Markdown como HTML en el documento** y Github te va a pasar ambos a HTML usando [Jekyll](https://jekyllrb.com/). Esta última es la opción que a nosotros nos interesa. Hacemos clic.

Ahora tendría que salirnos nuestra página web bajo el nombre del repositorio y organizado de esta forma: https://mpvdes.github.io/uah2223-crisalpas/

Es decir, con este orden: https://nombredelaorganizacion.github.io/nombredelrepositorio-branchconcreta/

## Cración de nuevos archivos directamente desde Github

Aunque lo vamos a hacer de otra manera, podemos crear nuevos archivos directamente desde el repositorio concreto de Github.

Creamos uno en el que copiamos el contenido del README.md. Pasado un tiempo, como antes hemos creado la página del mismo, nos transformará la página raíz en index.html. Los documentos se transforman a su vez en páginas web dentro del índice. 

Al respecto, un dato curioso: no se da la dirección de esos documentos completa, sino que se da un enlace relativo, como en el mundo web, es decir, una ruta relativa al lugar donde estás. Dicho enlace sería directamente pruebas-github.md, porque está en la misma ‘altura’ que el documento main que se usa como index y que en este caso es el README.md, que funciona a modo de raíz.

