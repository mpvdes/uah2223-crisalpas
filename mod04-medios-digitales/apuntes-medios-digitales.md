# Medios digitales

## 14/02/2023 Introducción al curso

El objetivo de este curso es aprender los conceptos básicos de edición de imagen y de vídeo a través de programas de *software libre*, es decir, que cumple estas cuatro libertades:

- Libertad de uso.
- Libertad de estudio: permite acceder al código fuente, que permite ver cómo se ha realizado el software. Es decir, es de código abierto (aunque el **open source** puede no facilitar el uso o limitarlo, mientras que el software libre siempre da libertad).
- Libertad de distribución.
- Libertad de modificar y publicar las modificaciones.

Frente al software libre, está el *software privativo*. Todo lo que no sea software libre es privativo.

El *programa del curso* está en [este enlace](https://www.jesusda.com/clientes/uah/), que incluye más contenido del que daremos en clase para que podamos ampliar conocimientos, aunque lo principal será lo que hablemos en las sesiones.
Para trabajar con vídeos e imágenes necesitamos conocer los derechos de autor y la propiedad intelectual.

### Derechos de autor y propiedad intelectual

#### Derechos de autor

Un *autor* es una persona que crea una obra. No es necesario realizar ningún trámite y ni siquiera es necesario publicar dicha obra para ser considerado autor de la misma. Esta persona no solo puede crear la obra, sino que también puede modificarla.Tan solo creándola adquiere derechos sobre su obra, que se denominan derechos de autor.

Los *derechos de autor* se consideran uno de los derechos humanos fundamentales. Se dividen en derechos morales y patrimoniales, es decir, intangibles y tangibles.

Los *derechos morales de autor* son:

- Reconocimiento de la autoría.
- Potestad de preservar la integridad de la obra.

La infracción más común de los derechos morales es el plagio.

Además, los derechos morales de autor se caracterizan por ser:

- Inalienables: no se pueden vender ni ceder.
- Irrenunciables: no se puede renunciar a la autoría de algo.
- Inembargables: no pueden ser retirados por terceros.
- Imprescriptibles: lo son para siempre, no prescriben.

Por otro lado, están los *derechos patrimoniales de autor*. Se refieren al derecho a explotar y usar la obra. Se pueden ceder, vender, compartir o incluso renunciar a ellos.

Al contrario que los derechos morales de autor, son prescriptibles, y su duración está limitada en el tiempo. Cuando este período acaba, la obra pasa a dominio público. En España, estos derechos prescriben cuando pasan 70 años de la muerte de su autor. Durante ese período los heredan familiares o 

La infracción más común de derechos patrimoniales es el uso o explotación no permitidas.

Por lo tanto, por defecto, no tenemos derechos sobre ninguna obra de terceros. Así, ni podemos decir que una obra es nuestra si no lo es, ni ocultar su autoría original, ni explotarla económicamente.

Existen una serie de excepciones a los derechos patrimoniales. Se pueden usar para citar la obra, criticarla o parodiarla (aunque tiene muchas limitaciones, ya que, por ejemplo, si citas dos versos de un haiku, que es un poema breve japonés, y el haiku tiene tres versos, ¿hasta qué punto se trata de cita o de plagio? ¿Dónde está el límite?). También se pueden usar con fines educativos o fines exclusivamente privados.

Además, también está permitida la distribución y comunicación pública de obras ya divulgadas que se realicen en beneficio de personas con discapacidad y sin fines lucrativos. Existe una excepción para medios de comunicación, que pueden reproducir, distribuir y comunicar de forma pública obras de temas de actualidad citando fuente y autor si este no hubiera hecho constar la reserva de derechos. Muchos medios obvian parte de esta excepción.

Asimismo, se pueden reproducir, distribuir y comunicar públicamente las obras situadas en la vía pública únicamente por medio de pinturas, dibujos, fotografías y procedimientos audiovisuales.

Por lo tanto, existe un alto grado de subjetividad en todas estas excepciones que complican la comprensión de los derechos de autor y difuminan sus límites.
#### Licencias

Para modificar lo anterior se crean las *licencias*, que son contratos privados por los cuales una persona recibe un derecho sobre un bien. Por lo tanto, se produce entre el titular de los derechos patrimoniales (que puede no ser el autor) y un tercero. Tiene validez legal, por lo que su incumplimiento va aparejado a sanciones. Existen diversas licencias que pueden ir directamente aparejadas a una obra. Son las siguientes:

- *Copyright*: todos los derechos reservados. Es decir, no puedes hacer absolutamente nada con la obra sin permiso del titular de los derechos patrimoniales.
- *Dominio público*: en el otro extremo al copyright está el dominio público, con ningún derecho patrimonial reservado.
- *Copyleft*: tienen algunos derechos reservados; están en el término medio del copyright y del dominio público. Entre otras licencias específias para software, arte o tipografías, las más conocidas son:

  - [Creative Commons](https://www.jesusda.com/clientes/uah/derechos-autor/tema_licencias/presentacion/pics/cc-infografia.pdf): las más utilizadas al ser muy fácilmente entendibles. Creative Commons es una organización sin fines de lucro que creó un proyecto de aplicación internacional para que la gente pueda utilizar las licencias sin necesidad de consultar con un abogado o un profesional. Estas licencias se adaptan a la legislación de cada país y los derechos se ceden de antemano, por lo que no hay que firmar contrato con el titular de los derechos.
  Se basan en cuatro restricciones:
    - Atribución (CC-BY): exige la cita del autor irrenunciablemente. Todas las licencias de este tipo incluyen la atribución.
    - Explotación económica/comercial (CC-NC): pueden impedir obtener beneficios económicos. Es decir, si incluye el término NC, prohíbe la utilización de la obra con fines comerciales. 
    - Modificación de la obra (CC-ND): implica que no se puede modificar la obra.
    - Relicenciamiento (CC-SA): si se incluye el concepto **share alike** o compartir igual, se indica que las obras derivadas permanecerán bajo la misma licencia de Creative Commons.
  - Coloriuris
  - Arte libre
  - GNU Free Documentation License (GFDL)

Hay que incluir la licencia Creative Commons también en los metadatos.


## 15/02/2023 Representación del color y formatos gráficos

### Representación del color

El color es difícil de representar, porque existen diversas formas de interpretarlo. De hecho, nuestro cerebro es el primer filtro, ya que lo lee a través de cierta subjetividad.

Por ello, se crean *modelos de color* para estandarizar los conceptos de color y determinar los colores concretamente. Cada modelo de color ubica de distinta manera los colores visibles por el ojo humano. Ninguno de los modelos es capaz de representar todos los colores que el ojo humano puede percibir, sino que representan un subconjunto, más pequeño. Además, dependiendo del modelo que se utilice se pueden representar unos colores u otros (si bien algunos coinciden).

Los modelos de color más conocidos son:

- Modelo RGB (Red, Green and Blue): los colores primarios, procedentes de la luz. Se suele usar en entornos digitales, en pantallas.
- Modelo CMYK (Cyan, Magenta, Yellow and Key): el de los colores impresos. Sirve cuando tenemos una superficie en la que el blanco lo da el soporte y el resto de colores se imprimen. Como excepción, el negro, ya que si se sumaran todos los colores CMY no daría un negro puro.


### Formatos gráficos

¿Cómo es posible que hayamos hecho una foto con una cámara o un móvil y luego se lea en un dispositivo? Lo que almacenan es información de imágenes, que normalmente reciben el nombre de imágenes en *mapa de bits*, **raster**, o **bitmap**. Así, lo que realmente tenemos es un mosaico de cuadrados de distintos colores que, al unirse, componen una imagen en nuestro cerebro, que está preparado para reconocer patrones.

Los cuadraditos reciben el nombre de *píxeles*, que pueden tener tanto color como transparencia. De hecho, la transparencia es muy útil porque todas las imágenes del mapa de bits son rectangulares, pero hay píxeles a los que se añade un factor alfa, que indica su transparencia.

Existe otro formato de imagen diferente a los mapas de bits. Son las *imágenes vectoriales*. Internamente no son colecciones de píxeles, sino de vectores. Es decir, una serie de figuras geométricas definidas matemáticamente.

Las imágenes vectoriales se almacenan con código, con un tipo, un nombre, un estilo con un color concreto de relleno y de borde (que traduce el RGB a hexadecimal, es decir, una combinación de seis números y letras del 0 a la F que facilitan la representación del color), además de un tamaño de borde. A todo ello se sumarían las coordenadas x e y en las que se encuentra el centro, así como el radio.

La ventaja que tiene el formato vectorial respecto al mapa de bits es que, cuando te aproximas mucho a una imagen en mapa de bits (Google lo llama imágenes prediseñadas), ves los píxeles, pero al hacer zoom en una imagen en formato vectorial (formato SVG) su tamaño se multiplica y no pierde calidad: siempre eres capaz de generar una imagen a la máxima calidad posible.

Sin embargo, no siempre usamos imágenes vectoriales, porque todas ellas tienen sus ventajas y desventajas. Por ejemplo, las fotos que hacemos con la cámara del móvil no van a ser vectoriales, sino que van a ser mapas de bits. En concreto, las *ventajas del **bitmap*** son el procesado y el tratamiento y efectos, mientras que las *ventajas de las vectoriales* son el escalado, el tamaño y la posibilidad de trabajar con objetos. Por ello, como ambas tienen sus ventajas y desventajas, se suelen crear formatos mixtos

*Truco de la terminal*: para descargar algo rápido, usar el comando wget o curl. Así, podremos descargar un archivo en el que ver cómo se estructura un formato .svg, y percibir claramente las formas que recopila.

### Propiedades de las imágenes

Las imágenes tienen tres propiedades básicas:

- *Tamaño*: se mide en píxeles (ancho x alto). Los megapíxeles que tiene una imagen se obtienen al multiplicar su ancho por su alto. Un millón de píxeles equivalen a un megapíxel. En general, aunque no siempre es así, cuantos más megapíxeles, maś calidad.
- *Peso*: cuánto ocupa una imagen. Una imagen en mapa de bits pesa más cuanto más tamaño tenga, no como una vectorial, porque en este último caso el peso depende de la complejidad de la imagen.
- *Resolución*: es un metadato, una información que se almacena conjuntamente con la imagen, pero no la caracteriza. Así, puede variar sin que cambie la imagen en realidad. Así, yo podría cambiar la resolución de una imagen sin alterar el número de píxeles que tiene. Es útil porque generalmente las imágenes las representamos en distintos dispositivos. Si, por ejemplo, quisiéramos imprimir una imagen, necesitaríamos saber la resolución porque la impresora necesita la instrucción para saber qué tamaño utilizar a la hora de imprimir la imagen. Aunque Photoshop cambia el tamaño cuando modificas la resolución, eso no tendría por qué ser así. Para entender mejor esto, si tuviéramos una imagen de un único píxel de ancho y de alto con una resolución de 1 ppp (o 1 píxel por pulgada), nos va a ocupar una pulgada; si la resolución es 2 ppp, nos ocupará media pulgada; y si es 0,5 ppp, nos ocupará dos pulgadas.

Si yo tengo la misma imagen, pero una imagen es de 100x100 píxeles y la otra de 1000x1000, aunque ambas tengan la misma resolución, se verá mejor la de 1000x1000 porque tienes más unidades de información.


### ¿Cómo guardamos una imagen bitmap?

Hay tres maneras básicas de almacenar una imagen:

- Sin comprimir (en bruto): mantiene la calidad original, pero pesa más.
- Comprimir sin pérdida de información: de alguna forma envías las instrucciones comprimidas, pero generas una imagen que es copia exacta de la original, sin perder calidad cuando se vuelve a descomprimir.
- Comprimir con pérdida de información: se simplifica la imagen, retirando parte de la información para ahorrar en el peso de la imagen, logrando una mayor compresión, aunque al descomprimir la imagen no se trata de una copia real completa de la imagen original.

### Formatos gráficos más comunes

Los formatos gráficos ráster más comunes son raw, bmp, jpg, gif, png, tiff, pdf y xcf.

Frente a ellos, los más comunes entre los vectoriales son svg, ps/eps (**postscript** y **extended postscript**), pdf, ai, fh9/fh10/fh11, odg y cdr.

El pdf aparece como ambas porque estos archivos funcionan como un contenedor en el que puedes meter muchas cosas.


## 16/02/2023 Gimp

Vamos a empezar a editar con Gimp. Tiene una interfaz similar a Photoshop.


## 21/02/2023 Gimp

Añadir la clase, viaje desde casa.


## 22/02/2023 Inkscape

Inkscape es un editor de gráficos vectoriales. Utiliza el svg como formato, aunque pueden insertarse imágenes en mapa de bits. Una de las ventajas de este formato es que soporta también animaciones. Además, es muy intuitivo y ocupa muy poco.

Aun así, tiene algunos contras, como que no trabaja con cuatricromía (archivos CMYK), aunque para eso podemos usar un programa (como [Cyan Graphics](https://cyan.graphics) o [Scribus](https://www.scribus.net)) que sirve para cambiar los formatos de color de los gráficos. También carece de herramientas que tiene Illustrator como 3D.

Vamos a abrir Inkscape, que nos recibe con una pantalla de bienvenida en la que configurar la aplicación. Recordemos que lo ideal es la configuración con fondos claros para que el cerebro no perciba las sombras más iluminadas de lo que realmente están.

Ahora arrancamos el programa seleccionando una pantalla en la tercera pestaña de esa configuración inicial. Una vez abierto, también podemos cambiar las modificaciones en preferencias, dentro de la pestaña Edición de la barra de herramientas.

Cuando tenemos el programa configurado, comenzamos a trabajar con Inkscape.

### La interfaz

En la barra lateral izquierda tenemos las herramientas disponibles, que nos ofrecerán distintas opciones de configuración en la segunda barra de herramientas bajo las pestañas de Archivo, Edición... Justo encima de esta segunda barra de herramientas superior tenemos los iconos de acceso directo a determinadas acciones de uso habitual.

Podemos activar paletas en esta barra de herramientas de uso habitual, que nos permite ver distintos modos de las herramientas.

### El diseño

La idea es dibujar superponiendo formas, como si de un *collage* se tratara. Vamos a practicar con círculos y rectángulos, de los que podemos cambiar el color de relleno y el borde. Si pulsamos sobre un color de la paleta de color mientras está seleccionada la forma, cambiamos su relleno; si, al mismo tiempo, pulsamos *alt*, cambiamos el color del borde. Luego podemos añadir otras características en la barra de herramientas de la derecha.

Además, según con la herramienta que seleccionemos ĺas formas aparecen unos selectores u otros. De hecho, esos manejadores cambian incluso con la misma herramienta. Por ejemplo, con la flecha del ratón. Si hacemos clic dos veces, nos permite rotar el objeto.

OJO Algo interesante es que si queremos cambiar el tamaño dividiéndolo o multiplicándolo por algún valor, o sumando o restando, podemos usar operadores directamente sobre los valores.

Aunque estamos trabajando en dos dimensiones, también tenemos profundidad, porque cada objeto nuevo que añado aparece encima del anterior.

Hacemos una serie de pruebas y probamos a guardar el archivo. Lo podemos guardar en distintos formatos, como el de inkscape, que nos guarda toda la info. Sin embargo, si lo quisiéramos para publicar directamente en nuestra página web, lo ideal es guardarlo en svg plano, que sigue escrupulosamente los estándares del svg. Le quita todos los añadidos de inkscape que tienen información adicional. Así, si queremos seguir trabajando con el diseño, lo guardamos en svg de inkscape, pero si queremos publicarlo, lo guardamos como svg plano.

Seguimos practicando. Si queremos agrupar unos objetos para tratarlos como una única unidad, podemos pulsar ctrl + g.

## 23/02/2023 Inkscape


##28/02/2023 Audacity

Para reducir el ruido, seleccionar un trocito del audio que solo incluya ruido y hacer clic en Analizar>Reducción de ruido>Obtener perfil de ruido. Luego, seleccionas el audio por completo y haces clic en Analizar>Reducción de ruido>Aceptar.

Si todavía sigue quedando ruido, se puede incluso repetir el proceso, aunque en ocasiones podría haber alteraciones en el sonido según sus características. Por ello, el objetivo principal es partir de la mejor calidad posible.


##01/03/2023 Openshot

Como en anteriores ocasiones, es muy importante diferenciar entre Guardar proyecto y Exportar. De la misma forma que teníamos en Audacity, en Openshot tenemos distintas pistas en las que superponer varios fragmentos de vídeo.

A un proyecto de vídeo se puede añadir:

- Vídeo
- Sonido

