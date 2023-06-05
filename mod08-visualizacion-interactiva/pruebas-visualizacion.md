# Introducción a visualización interactiva con Alba G. Corral

### 17/05/2023

El objetivo es hacer un proyecto colaborativo de visualización de datos, una vez ya están limpios. Alba nos pone como ejemplo Barcelona Clean Location, un díptico que parece mostrar la concentración de la población en la ciudad de Barcelona.

Para ello vamos a trabajar con Processing, que nos permitirá visualizar los datos. Además, también usa otras herramientas, como Krita, a modo de pizarra, y Gimp, que sirve como edición de imágenes. Es importante utilizar este tipo de herramientas con el fin de visualizar los datos que queremos mostrar y saber luego cómo trasladarlos a código.

En el caso de Barcelona Clean Location, Alba usa un diagrama Voronoi, que divide el espacio según la concentración de los puntos. Cuando un punto está más alejado de otro, su área será más grande, porque tendrá más espacio para extextenderse.

Vamos a usar un [repositorio de github](https://github.com/mpvdes/uah2223-visualizacion-interactiva/blob/main/README.md) para este módulo. Ella usa Maadix como lugar en el que guarda sus datos, y accede mediante Nextcloud.

De hecho, usaremos Nextcloud como [repositorio](https://albagcorral.com/nextcloud/index.php/s/kAqZ2QnzjoDqbK9) para que ahí esté todo el contenido con el que trabajemos.


### 18/05/2023

Añadir


### 22/05/2023

#### Con [Laura Martín Sánchez](https://lmartingrx.github.io/porfolio/), periodista visual

El equipo de periodismo visual de El Confidencial realiza todo el proceso desde la recopilación de la información hasta la muestra de la misma. El objetivo no es hacerlo más bonito, sino hacerlo funcional, aunque puede ir unido en el proceso.

Aunque trabajan en otros modelos, lo más fácil es cuando existen eventos premeditados, como las elecciones. Para ello, tenemos que plantearnos qué es lo que esperamos ver en un widget de municipios, por ejemplo, o en uno de autonómicas, y cómo los representaríamos.

- Municipales
  - Quién gana en cada municipio (mapa)
  - Vista por municipio
  - Vista España municipales
  - Comparativa con las anteriores municipales (gráfico de barras)
  - Número total de votos por partido (tabla)
  - Concejales por municipios y partidos (hemiciclo)
  - Participación y escrutinio
  - Pactos

- Autonómicas
  - Qué comunidades tienen elecciones
  - Quién gana en cada comunidad
  - Escaños por comunidad y partido
  - Número total de votos por comunidad
  - Datos por provincias
  - Pactos

El objetivo es que los módulos se puedan reutilizar y se entiendan por sí mismos. Es importante en ese proceso ir probando y definir los casos de uso. A la hora de hacer un producto como un widget o un formato, muchas veces es más compleja la conceptualización para que se pueda usar y sabiendo qué va a pasar cuando la gente haga clic en determinadas zonas.

Lo más inteligente es trabajar por módulos, porque lo que tenemos en un widget en ordenador no se puede trasladar tan fácil a móvil si está hecho en conjunto. Hay que saber desde lo que lee una persona que solo quiere conocer el resultado de su pueblo hasta lo que lee alguien que quiere saber el máximo detalle al respecto de este.

Hay que establecer distintas capas de contenido, desde lo que se va a ver en portada a lo que se quiere mostrar en las piezas más desarrolladas.

Además de los casos de uso (qué pasa cada vez que una persona pulsa un botón), hay que explorar los casos de borde (casos extremos que no tienen por qué pasar habitualmente, pero que pueden dar error).

Casi siempre lo que ellos usan es Mapbox, donde los resultados cargan más rápido que en d3, porque en d3 tiene que estar todo subido en local.

El dataset con el nombre de los municipios lo obtienen del INE a través del ID y lo correlacionan con su librería.

Además de hacer widgets, hacen formatos, que son piezas de mayor longitud y basadas en datos. 

También es importante trabajar de forma inteligente en web para que sea lo más usable independientemente de cada tipo de pantalla.

Vamos a ver paso a paso cómo crean un formato, con el ejemplo de ["Ucrania, arrasada: 10 datos para comprender la magnitud de la invasión rusa"](https://www.elconfidencial.com/mundo/2022-05-09/una-factura-millonaria-y-la-destruccion-de-un-pais-10-datos-de-la-invasion-rusa-de-ucrania_3420013/):

1. Lo ideal es tener primero siempre el texto, porque sabiendo qué se quiere contar es más fácil saber cómo mostrarlo. Ella recomienda organizarse en [Figma](https://www.figma.com/), donde inician el proceso en una pantalla de 1440 de ancho. Van añadiendo algo gráfico o un sumario cada tres párrafos, porque la lectura se complica cuando se extiende demasiado el texto (eso lo ponen en el doc, según lo que van incorporando). También es interesante ir cambiando de tipos de formatos a medida que avanza el texto (por ejemplo, que no todo sea vídeo).
2. Sobre el texto, añades lo que quieres mostrar gráficamente. No todo lo que está en el gráfico tiene que estar literalmente explicado en el texto, como dice Laura.
3. Vas haciendo la maqueta en Figma (puede tener elementos sticky, por ejemplo, que se queden estáticos mientras el texto pasa por encima al scrollear).
4. Preparas el contenido, por ejemplo, sacando svg para tocarlos en Ilustrator o donde necesites y poder incrustarlos (todo lo que funcione estático, mejor).
5. El equipo de desarrollo tiene un documento html con premaquetas en las que va añadiendo código y tiene cosas preparadas. La clave para que salga bien es tener mucha comunicación con los equipos tanto de redacción como de desarrollo (usan sobre todo HTML, CSS y Javascript).
6. Después, lo suben al CMS en el Zip. 

Se recomienda a veces empezar por móvil, pero Laura dice que ella empieza por escritorio, donde añade el total de contenido, y luego ya si tiene que quitarlo, lo quita. Además, recomienda que antes de ponerse a pintar, hay que entender muy bien todo antes (tanto el texto como el contenido visual).

Ellos usan mapbox para secciones censales, d3 para elecciones municipales y datawrapper para elecciones autonómicas. Hay que tener cuidado con las webs, aunque recomienda [esta](https://d-maps.com/index.php?lang=es), pero se pueden sacar de Datawrapper incluso, descargando el PNG y pintándolo en base real.

Lo ideal es aprender de referencias, porque a partir de ellas ya se pueden hacer trabajos más complejos y lograr que ciertos elementos salgan de forma mecánica.


### 23/05/2023

#### Clase con Alba G. Corral

Añadir


### 24/05/2023

#### Clase con Alba G. Corral

Para descargar un archivo, lo que hacemos primero es un git clone. Y luego git pull para comprobar que todo está bien. También podemos instalar gh para usar el comando ```gh repo clone https://url```. Nos da unas instrucciones [aquí](https://github.com/mpvdes/uah2223-visualizacion-interactiva/blob/main/howto_gh.md) para instalar gh. Ahora ya tenemos el repositorio instalado en local.

#### Qué visualizar

Antes de empezar a visualizar, es necesario saber qué es lo que se quiere contar. No todas las visualizaciones pueden usarse para hablar de todo. Vamos a explorar la taxonomía del círculo y ver posibilidades de visualización.


### 30/05/2023

#### Clase con Adolfo

Repasamos cómo se instala processing. Desde la propia web, descargar el programa y dejarlo en nuestra carpeta de software, una vez descomprimido. De esta forma ya podemos acceder a través de processing.exe. Una vez dentro, arriba a la derecha, donde pone Java, tenemos que seleccionar p5.js (instalarlo si no lo está). Y así podemos empezar a trabajar.


### 31/05/2023

#### Clase con Alba G. Corral

Comentamos un problema con un dataset de datos de elecciones que queremos pasar de wide a long format.


### 01/06/2023

#### Clase con Alba G. Corral

Practicamos con processing intentando resolver el problema con el dataset.
Processing primero lee las variables que están fuera de las funciones, es decir, las variables globales. Luego ya accede a las funciones.

Hay similitudes con python, ya que también tenemos que cargar un csv. Podemos ver las distintas formas de programar en processing a través de los ejemplos. Se accede a esta ventanita a través de Archivo > Ejemplos o Ctrl+Mayus+O.

Si queremos autoformatear y que nos tabule correctamente, usamos ctrl+t.
