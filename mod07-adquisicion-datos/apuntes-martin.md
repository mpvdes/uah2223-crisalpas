# Clase con Martín Nadal
#### 09/05/2023

## Presentación

Martín Nadal es un artista y visualizador de datos a nivel internacional. Ha realizado diferentes proyectos con el objetivo de explicar la sociedad. Entre ellos, se encuentran:

1. [**Mapas del descontento**](https://muimota.net/mapas/): hizo un moodboard con lo que quería contar y transmitir. A partir de entonces, genera código que le ayuda a extraer de artículos de medios de comunicación el número de personas que participaban en las manifestaciones. Con el resultado, crea un mapa en el que se puede ver la evolución de las manifestaciones en el mapa a lo largo del tiempo, además de su magnitud y su tipo.

2. **Topografías del descontento**: viaja a Bogotá y encuentra que hay paros y protestas allí. En esa ocasión, opta por realizar una obra más artística.

3. [**Gala**](gala.muimota.net) (2016): usa los conciertos como indicador de la actividad cultural de cada uno de los países. Se basa en la página web [last.fm](last.fm), que tenía una base de datos de conciertos en el tiempo. Además, usó un sistema de servicios de geolocalización (mapzen). Con ello, hizo una [visualización](https://vimeo.com/188983690).

4. [In the air](intheair.es) (2009): el proyecto comienza con la obtención de los datos de calidad del aire del Ayuntamiento de Madrid, en distintas estaciones de medición.

5. [Polinizando Zaragoza](muimota.net/nerea/zaragoza) (2016): experimentan con partículas cuyo número depende de las lecturas de estaciones de medición en ese momento y cuya dirección varía según el viento en la ciudad en cada momento. 

Como explica Martín Nadal, en todas las ocasiones es muy importante jugar con los colores.

También recomienda otros proyectos de otros artistas o con los que ha colaborado, como [Ars Archive](http://arsexplorer.martinnadal.eu/), que encuentra conexiones entre obras de arte del Ars Electronica Archive.

## Embeddings

An embedding is a mathematical representation of a discrete object or concept, such as a word, a sentence, an image, or a graph, as a dense vector of continuous numbers in a high-dimensional space. The purpose of embedding is to capture the semantic relationships.

La máquina es la que es capaz automáticamente de hacer esta clasificación, tras haber aprendido del contenido procedente de una base de datos. Así, se nos permite evaluar la similitud entre los diferentes elementos. Un ejemplo de estos proyectos es [***X degrees of separation***](https://artsexperiments.withgoogle.com/xdegrees).

No solo se puede usar para imágenes o texto, sino que también se puede aplicar sobre el audio.


# Segunda clase con Martín Nadal
#### 10/05/2023

El contenido práctico de la clase está en el cuaderno de jupyter que se llama python-martin.

## Wikidata

Te permite ver los datos de los artículos de Wikipedia. Para ello accedemos a la web [query.wikidata.org](https://query.wikidata.org).
El ejemplo más básico es con los gatos, pero podemos consultar cualquier cosa. Por ejemplo, todos los artistas que se han suicidado y de qué se han suicidado.

# Clase con Martín Nadal
#### 11/05/2023

## Cómo realizar una consulta en Wikidata

La consulta más básica es buscar por gatos, que se selecciona en ejemplos. Si queremos cambiar la consulta, bastaría con seleccionar el código qúe está detrás de wd: y hacer clic en ctrl + espacio para que nos permita escribir texto y buscar el código de lo que queremos consultar. Por ejemplo, los países en el mundo.

En esa línea lo que hacemos es seleccionar todos los países así que si pasamos a hacemos enter para crear una siguiente línea, ahí tendríamos el filtro hecho de todos los países. Así, si queremos añadir una columna adicional con la edad de jubilación de todos los países basta con escribir una línea de código más que sea:

?item wdt:P3001 ?jubilacion

Escribimos el segundo interrogante con el nombre jubilación para cambiar el nombre de la columna y que no haya dos duplicadads con el nombre de ?item. Y, además, añado en la segunda línea, donde pone SELECT la nueva columna con el nombre ?jubilacion.

OJO Si queremos ponerlo en español sustituimos la parte de "[AUTO_LANGUAGE],en" en la línea 6, la que se inicia por SERVICE, por las letras "es".

El de cats es el ejemplo más sencillo del que se puede partir, que usa el lenguaje SPARQL. Ahora vamos a hacer una búsqueda de ciudades y, en concreto, a [las que son de España](https://query.wikidata.org/#%23City%0ASELECT%20%3Fcity%20%3FcityLabel%20%3Faltitud%20%3Fgeo%0AWHERE%20%0A%7B%0A%20%20%3Fcity%20wdt%3AP31%20wd%3AQ515.%20%23%20Es%20una%20ciudad%0A%20%20%3Fcity%20wdt%3AP17%20wd%3AQ29.%20%23%20Es%20una%20ciudad%20de%20Espa%C3%B1a%0A%20%20%3Fcity%20wdt%3AP2044%20%3Faltitud.%20%23%20altura%20sobre%20el%20nivel%20del%20mar%0A%20%20%3Fcity%20wdt%3AP625%20%3Fgeo.%20%23%20coordenadas%0A%20%20FILTER%28%3Faltitud%20%3C%2080%29%20%23%20filtro%20por%20altura%20%0A%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22%5BAUTO_LANGUAGE%5D%2Cen%22.%20%7D%20%23%20Helps%20get%20the%20label%20in%20your%20language%2C%20if%20not%2C%20then%20en%20language%0A%7D%20ORDER%20BY%20%28%3Faltitud%29).

Para hacer esta consulta lo ideal es irnos a una de las ciudades o de los valores para ver qué es lo que nos interesa. En este caso, primero filtraríamos todas las ciudades. En la segunda línea diríamos que el país sea España y ponemos un punto. Tal que así:

  ?city wdt:P31 wd:Q515. # Es una ciudad
  ?city wdt:P17 wd:Q29.
  
En estas consultas ambas tienen wdt y wd. wdt significa que cojo todos los elelementos cuya *propiedad sea instancia de* (esto es lo que escogemos primero) y en wd ponemos lo que nos interesa en concreto, en este caso *ciudad*. Así metemos en la variable ?city todas las ciudades. En la segunda fila, lo que hacemos es decirle, vale, ahora en la variable ?city solo quiero que me aparezcan los elementos *cuyo país sea* (wdt) y *España* (wd).

Ahora si quisiéramos ver la altitud de esas ciudades solo usaríamos wdt y añadiríamos abajo la siguiente línea.

  ?city wdt:P2044 ?altitud.

En el caso de que queramos representar los países o las ciudades concretas en un mapa, sacaríamos las coordenadas, para lo que wikidata tiene la propiedad de coordenadas. Añadimos, por lo tanto, la siguiente línea y también metemos la variable ?geo en SELECT.

  ?city wdt:P625 ?geo.

Si quisiéramos ahora filtrar por propiedades, por ejemplo, las ciudades con altura menor de 80 metros sobre el nivel del mar, añadiríamos al final, antes de la línea de SERVICE, otra línea:

  FILTER(?altitud < 80)

Estos resultados se pueden descargar o presentar en distintos formatos.

Otras opciones dentro de las consultas SPARQL es ordenar las cifras de mayor a menor o como queramos. Para ello, después de que se cierra la consulta, después de la llave final, escribimos:

} ORDER BY (?altitud) # la llave final está incluida en el código, por lo que no hay que escribirla otra vez

## Scrappear

Para scrappear necesitamos saber **de qué está hecha una web**. Una web está hecha por varios elementos:

- HTTP (Hypertext Transfer Protocol): es cómo habla el ordenador. Por ejemplo, si recibimos un 400 como respuesta del servidor quiere decir que hay algún error, mientras que si recibimos un 200 implica que todo ha ido bien. Además, tenemos un protocolo que es el HTTPS, que es el seguro e implica que la comunicación está encriptada entre cliente y servidor.
- Cookies/Session: cuando hacemos una consulta, lleva nuestras preferencias asociadas y así nos pueden ubicar y conocer.
- URL: son la forma en la que llegamos a los recursos.
- HTML: son entidades. Cuando scrapeamos, lo que hacemos es filtrar por dichas entidades y sacar el texto de su interior.
- DOM (Document Objetc Model): nos proporciona una forma de podernos referir a cada uno de los elementos. Nos permite hacer queries a cada uno de los elementos del dom. Tiene estructura de árbol y todos los elementos están anidados unos a otrs, cuyo padre es la etiqueta body.
- Headers: es importante saber que los headers se ordenan por prioridad par a- Tablas: dentro de las tablas los elementos más importantes son tr (table row), con las filas, y th (table header), con la información de los títulos y las columnas. 
- iframes: complican el tema del scrapeo porque son una página dentro de otra.
- div: sirve para marcar los bloques cuadrados. Cambian mucho la forma en la que se ve la información que consultamos.
- span: para marcar las porciones de línea de un documento. Por ejemplo, una palabra dentro de una frase.
- CSS: en HTML tenemos el contenido, pero en CSS tenemos el estilo. Es lo que más usamos para buscar, siendo lo más importante:
  - Class: la clase define un estilo a aplicar a un conjunto de elementos.
  - id: define el estilo a aplicar sobre los elementos únicos.
- Javascript: HTML da el contenido, CSS el estilo, y Javascript la interactividad.

Hay distintas herramientas para scrappear, entre las que nos vamos a centrar en Selenium, Requests y BeautifulSoup. Requests nos extrae el contenido, BeautifulSoup lo interpreta y Selenium hace ambas cosas, mediante el navegador. Vamos a desarrollar los conceptos en python, así que nos vamos al cuaderno correspondiente a esta clase (pruebas-scrapper).


# Clase con Martín Nadal
#### 12/05/2023

Seguimos con el scrappeo. Nos vamos a ir a python, al archivo de pruebas-scrapper, en el que hoy daremos datos de elecciones.

# Repaso con Martín Nadal
#### 13/07/2023

Aunque el lenguaje SPARQL que usamos con Wikidata hereda de SQL, es bastante diferente. Vamos a trabajar con [estos apuntes](docs.google.com/presentation/d/10TrWhr90AIb6aT89np1QERhA2JNQw2OH0yS1ep0Nho0/edit?usp=sharing) ahora.
