###20/06/2023

## Taller de Victòria Oliveres

Con Selector Gadget selecciona únicamente los elementos del html que quiere scrapear y tener en cuenta. De esa forma, te da la información que diferencia a un elemento de otro, lo que facilita que lo scrapees. ¿Cómo funciona? Con clic seleccionas lo que quieres extraer y con clic derecho excluyes lo que no. Por ejemplo, si quieres el cartel de las películas de los Goya pero no la imagen de los premios, das clic sobre los carteles y clic derecho sobre los premios, lo que te dice qué es lo que comparten esos elementos para orientarte dentro del código html completo. OJO Lo que aparece con un punto delante será una clase.

Ahora necesitamos scrapear solo esas partes. Para hacerlo, sabiendo el elemento concreto que queremos obtener y sus características, usamos un read_html en R en el que incluimos el link a la página y lo guardamos en una variable. Ese comando te descarga el código html de la página. Luego podemos usar el pipe %>% para que nos de el contenido del texto.

En el caso de querer extraer una imagen, lo que queremos es la variable que está dentro del atributo src. De la misma forma que hemos hecho lo anterior, obtenemos la web, aunque en lugar de usar html_text() usamos html_attr().

El código de la clase está en el archivo practicas-victoria-oliveres.R.
