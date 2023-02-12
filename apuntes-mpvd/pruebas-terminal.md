# Qué es cygwin

[Cygwin](https://www.cygwin.com/) consiste en herramientas [GNU](https://www.gnu.org/) y decódigo abierto que emulan de alguna forma una distribución Linux en Windows.

## Cómo instalamos cygwin

Para instalar Cygwin en el ordenador, primero descargamos el archivo setup-x86.exe. Si tenemos algún problema con algún tipo de descarga, podemos consultarlo en StackExchange o StackOverflow, donde las comunidades han resuelto muchas dudas.

Al instalar Cygwin, sale una interfaz en la que hay que seleccionar los paquetes de la librería que queremos instalar. Para ello, hay que escoger View>Full en lugar de View>Category. Así, podemos descargar lo que necesitamos e instalarlo sustituyendo Skip por la versión más nueva disponible en la columna de New. En este caso, vamos a instalar:

- Curl: programa para comunicarse con protocolos de internet.
- Libcurl-devel: librería de curl.
- Libcurl4.
- Lynx: navegador web en línea de comandos.
- Git.
- Libgit2-devel.
- Ruby: lenguaje informático muy utilizado por periodismo de datos en un momento determinado (originado con Dollars for docs).
- Ca-certificates.
- Ca-certificates-letsencrypt: es una forma de crear certificados uno mismo.
- Wget: en algunos casos es como curl, pero es más para HTTP que para protocolos.
- Wget2.
- Gcc-core: librerías de compilación.
- Libgcc1.

## Cómo se usa cygwin

Una vez instalado, para entrar, buscamos cygwin en el menú de Windows. Así entramos en el intérprete de comandos. Para entender qué son este tipo de aplicaciones, tenemos que diferenciar entre las dos que existen: graphic user interfaces y las command-line interfaces.

La línea de comandos es un software donde se pueden ejecutar comandos, es decir, órdenes o instrucciones que permiten ejecutar programas. Por ejemplo, Firefox.

En principio, lo que vamos a ejecutar aquí son los comandos de bash. Esta es una terminal de Unix, en los que se inspira Linux, y nos permitirá acceder a ellos. Bash es un dialecto de lo que se denomina la shell, el corazón del ordenador. Así, nos permite acceder al contenido del ordenador, ya sean documentos o programas, de una forma sencilla.

Podemos ejecutar comandos distintos. Por ejemplo, podemos pedir la versión de bash que tenemos.

bash --version

De hecho, la instrucción

nombredelprograma --version

es la que suele funcionar después del nombre de un programa para decirnos qué versión es.

También si escribes 

man nombredelprograma

se abre el manual del programa, que abre un lector de documentos en la terminal, es decir, un paginador. En él, se puede avanzar y retroceder página con repág y avpág, respectivamente. Para salir del paginador, basta con pulsar q.

Hay dos paginadores en bash: less y more. Estos comandos unidos al nombre del archivo de texto concreto nos permiten visualizarlo. Tienen algunas diferencias que veremos en un futuro.

Para comunicarnos con la terminal, usamos una estructura que siempre es igual:

comando [opciones] [argumentos]

Para hacernos una idea, un ejemplo de las opciones puede ser aumentar el tamaño de letra.

Volvemos a cygwin. El problema de esta aplicación es que tenemos que correr de nuevo el instalador cuando queremos añadir algún programa nuevo, como Python. Para evitarlo, vamos a instalar apt-cyg, que nos permitirá acceder a esta base de datos para poder instalar directamente lo que deseemos. Por esa razón, no debemos borrar el archivo ejecutable original para el setup, ya que se basa en él.

## Instalación de apt-cyg

Vamos a [instalarlo](https://github.com/transcode-open/apt-cyg). Para ello, usamos las líneas que nos pone, que vamos a interpretar.

lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg

lynx es el navegador web, al que, si añadiéramos solo el argumento con una página web, iría a esa página. Sin embargo, con la opción -source, va a ver el código fuente de la página. Con el signo >, característico de bash, accedemos a la opción que ofrece de entubamiento y que nos permite enlazar una acción con otra. Es decir, aunque hay una línea de instrucción, esta línea hace dos cosas: por un lado, se descarga el código fuente de esa página web y ese código fuente lo pone en un archivo que crea en el momento y que se llama apt-cyg.

install apt-cyg /bin

Esta segunda línea lo que hace es instalar ese archivo apt-cyg que acabamos de crear en la carpeta /bin.

Ahora lo instalamos. Copiamos la línea y la pegamos en cygwin (para pegar en cygwin usamos mayúscula + insertar, aunque botón derecho sobre el cygwin también sirve para pegar si no tenemos a mano el botón de insertar). Si hay algún problema, para ir al inicio de la línea, ctrl + a, para borrar caracteres ctrl + d y para ir al final de la línea ctrl + e. Aunque al ejecutar el comando, parece que no ha hecho nada, eso suele ser buena señal, porque si no daría error. En el caso de querer borrar una línea, desde el inicio de la línea (ctrl + a), pulsamos ctrl + k.

Ahora, para ver si está instalado, pedimos que nos liste los archivos instalados con

ls

Si queremos ver los que están ocultos, tenemos que añadir una opción

ls -a

Ahora se ve cuál es el archivo que tenemos instalado. Algo a tener en cuenta es que podemos ver dónde podemos instalar los archivos si usamos doble tabulador. Y, si usamos tabulador una vez, podemos ver los documentos o carpetas que tenemos en la carpeta donde estamos.

Una vez instalado, ya podemos usarlo. Para ello, podemos probarlo instalando nano.

apt-cyg install nano

## Instalamos nano y primeras pruebas con nano

Para ver si lo tenemos instalado, escribimos nano o nano.exe y clicamos enter. Allí vemos sus instrucciones, y, donde pone acento circunflejo, ^ , se refiere a la tecla de control. Salimos con ctrl + x.


