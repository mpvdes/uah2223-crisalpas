### 11/07/2023

## Clase de organización de la información con SQL
##### Con Martín Nadal

Vamos a aprender las habilidades de SQL necesarias para poder extraer información. Los apuntes de la asignatura, por el momento, están en este [enlace](https://docs.google.com/presentation/d/1alE7mRgCqqbYePIDtQxxAEgaGpyCFMTDUWfWLqAENIg/edit#slide=id.gcb9a0b074_1_0).

Recordemos que las bases de datos son tablas, similares a una hoja de cálculo de Excel, a las que podemos hacer consultas. Para ello, primero tenemos que identificar la estructura de datos.

XAMPP es la forma más sencilla de hacer que tu ordenador tenga su propio servidor de MySQL. De esta forma, con XAMPP, cuando ponemos localhost: y el número del port que nos señale el XAMPP control panel (en mi caso, localhost:80), nos aparecería XAMPP, que nos permite comprobar que funciona. Para usarlo, una vez en esa pestaña, damos clic sobre PHP My admin, la pestaña que se encuentra arriba a la derecha (o en el menú desplegable).

Hoy vamos a aprender a hacer consultas de más de una tabla. Para ello, necesitamos este [enlace](https://cryptpad.fr/code/#/2/code/view/x9O+LZQ4xTjz1smDM6y9QNK6e23x9IFJ+VXEaSaU5o0/).

Cuando llegamos a la interfaz de *phpMyAdmin*, le damos la botón de New, que nos lleva a la página databaes y ponemos un nombre a la base de datos. Le damos a crear y nos genera una base de datos vacía, en la que vamos a pegar las instrucciones SQL que tenemos en la página web enlazada previamente. 
Estas instrucciones, en concreto, las pegamos en la pestaña SQL, que se encuentra dentro de la database que hemos creado. Le damos a continuar y nos ejecuta las instrucciones.

Una vez ejecutado ya tenemos contenido dentro de la base de datos. Ahora, vamos a hacer consultas en esa base de datos, lo que se realiza dentro de la pestaña SQL en la que antes hemos introducido el contenido de la BBDD.

#### Consultas baśicas de SQL

La consulta más básica que hay es SELECT * (el asterisco devuelve todas las columnas) from employee (el nombre de la tabla, que puede ir entre estos caracteres `` si incluye algunos caracteres extraños). Si queremos el primer nombre, por ejemplo, escribiríamos SELECT first_name from employee y nos daría el dato solicitado.

Ahora, por ejemplo, vamos a pedir que nos salga la gente que gane más de 80.000 dólares, para lo que usamos la palabra de filtrado o de condición WHERE.

`SELECT first_name,last_name,salary FROM employee WHERE salary>100000`

Podemos también ordenar los datos como nos interese. Eso se hace con *ORDER by*.

`SELECT * FROM employee ORDER by salary`

El orden original es de mayor a menor, pero si quisiéramos el orden inverso usaríamos la palabra reservada DESC.

`SELECT * FROM employee ORDER by salary DESC`

También hay la opción de limitar los campos que queremos que nos proporcione. Por ejemplo, poder ver las tres personas con más sueldo. Entonces, la fórmula sería la siguiente:


`SELECT * FROM employee ORDER by salary LIMIT 3`

#### Algunas opciones de SQL más avanzadas

Si queremos renombrar una columna, usamos la palabra reservada AS. Lo podemos hacer así:

`SELECT first_name AS nombre, last_name AS apellido FROM employee`

En el caso de que queramos saber qué sexos hay en la empresa, por ejemplo, usamos la palabra DISTINCT, que nos muestra los valores únicos y nos quita duplicados. En este caso, nos saldría M y F, ya que nos elimina los duplicados.

`SELECT DISTINCT (sex) FROM employee`

Tiene más sentido si lo vemos con las personas que son superiores. Esto se haría con:

`SELECT DISTINCT super_ide FROM employee'

Ahora vamos a aprender a contar. Si queremos responder a la pregunta sobre cuántas personas trabajan en la compañía, tenemos que usar la función COUNT.

`SELECT COUNT(*) FROM employee`

También podemos decirle que nos aparezca con otro nombre.

`SELECT COUNT(*) AS num_empleados FROM employee`

Si, por ejemplo, de una fecha solo te interesa el año, se puede usar la función YEAR. De esta forma, si queremos ver a los empleados por año, sería así:

`SELECT first_name AS nombre, last_name AS apellido, year(birth_day) AS ano_nac FROM employee`

Si queremos ahora seleccionar a los empleados que han nacido después de 1965, usamos la siguiente fórmula:

`SELECT first_name AS nombre, last_name AS apellido, year(birth_day) AS ano_nac FROM employee WHERE year(birth_day)>1965`

Si lo que queremos aplicar es una expresión lógica (mayor de 1965, pero menor de 1970), iríamos encadenando las condiciones tal que así:

`SELECT first_name AS nombre, last_name AS apellido, YEAR(birth_day) AS ano_nac FROM employee WHERE YEAR(birth_day) > 1965 AND YEAR(birth_day) < 1970;
`

Para esta misma consulta también podemos usar el parámetro BETWEEN: 

`SELECT first_name as nombre, last_name as apellido, year(birth_day) FROM employee WHERE year(birth_day) BETWEEN 1965 AND 1970`

Ahora, vamos a listar el número de supervisores que hay, eliminando los nulos, porque el jefe máximo es un valor nulo (null). Para ello, tenemos que filtrar los valores que no sean *Null*.

`SELECT DISTINCT(super_id) FROM employee WHERE super_id != NULL`

Sin embargo, como NULL es un valor especial en ese QR nos da error, y en este caso tendríamos que usar la palabra IS o, en su defecto, la palabra IS NOT.

`SELECT DISTINCT(super_id) FROM employee WHERE super_id IS NOT NULL`


### 12/07/2023

## Clase de organización de la información con SQL
#### Con Martín Nadal

Vamos a ver otras funciones adicionales. Una de ellas es LIKE. Si queremos coger los empleados cuyo apellido comience por J, uso la función LIKE y añado la almohadilla para indicar que nos da igual lo que vaya detrás del caracter incluido. Tal que así:

`SELECT * FROM employee WHERE first_name LIKE "J%"`

Si quisiera que acabara en M pondría el porcentaje al principio y añadiría la nueva condición:

`SELECT * FROM employee WHERE first_name LIKE "%M"`

En el caso de querer ver todos los nombres que contengan, por ejemplo, una a, pondríamos este caracter entre porcentajes:

`SELECT * FROM employee WHERE first_name LIKE "%a%"`

Esta estructura podemos hacerla más compleja usando los porcentajes. También podemos usar el guion bajo, que es una especie como de place holder, de no me importa qué letra sea, pero que sea solo una. Por ejemplo, si quiero todos los nombres que tengan como segunda letra una a usaríamos el guion bajo así:

`SELECT * FROM employee WHERE first_name LIKE "_a%"`

Es muy útil para **buscar cadenas**. En lo que hay que tener en cuenta que pueden aparecer caracteres extraños cuando busquemos.

#### Agregados

Vamos a trabajar con funciones que nos sirven para coger muchos números y hacer operaciones de cuenta o similares. Por ejemplo, vamos a hacer la consulta avanzada sobre sueldo medio de los empleados.

Primero, accedemos a todos los sueldos:

`SELECT salary FROM employee`

Así vemos la columna correspondiente al salario. Ahora, usamos la función average (AVG):

`SELECT AVG(salary) FROM employee`

Podemos renombrar la columna para que nos dé el resultado que estamos buscando:

`SELECT AVG(salary) AS "Sueldo medio" FROM employee`

También podemos hacer otras consultas, como la suma:

`SELECT SUM(salary) AS "Suma de sueldos" FROM employee`

O agrupar sueldo medio por sexo con GROUP by y añadir la etiqueta que le corresponde a hombre y mujer, metiendo el campo correspondiente:

`SELECT sex,AVG(salary) AS "sueldo_medio" FROM employee GROUP by sex`

También podemos contar el número de empleados y empleadas en la empresa:

`SELECT sex,COUNT(emp_id) AS "num_trabajadores" FROM employee GROUP by sex`

Si queremos listar el total de las ventas por empleado, usamos la siguiente fórmula, por ejemplo:

`SELECT emp_id, SUM(total_sales) AS "ventas_por_empleado" FROM works_with GROUP by emp_id`

#### Uniones

Permite concatenar dos consultas. Por ejemplo, vamos a ver todos los nombres de todos los empleados y, acto seguido, el listado de los nombres de las sedes, podemos pegarlo (en este caso no tendría sentido porque estamos mezclando dos cosas que no cuadran mucho, pero puede ser útil):

`SELECT first_name FROM employee UNION SELECT branch_name FROM branch` 

Además de UNION, tenemos JOIN, que nos permite unir los valores de una tabla y otra básandonos en columnas comunes. Por ejemplo, vamos a hacer una tabla en la que aparezca el ID de empleado y el apellido junto al nombre de la empresa en la que trabaja:

`SELECT * FROM employee JOIN branch ON employee.branch_id = branch.branch_id`

Como vemos, para usarlo tenemos que hacer el JOIN con la segunda tabla que queremos unir y la columna concreta que queremos combinar de cada tabla con ON.

Podemos también limitar el número de columnas que mostramos, eligiéndolas en SELECT:

`SELECT emp_id,first_name,last_name,branch_name FROM employee JOIN branch ON employee.branch_id = branch.branch_id` 

Vamos a hacer un listado con nombre y apellido de los vendedores y sus ventas. Primero, unimos ambas tablas:

`SELECT * FROM employee JOIN works_with ON employee.emp_id = works_with.emp_id`

Y luego hacemos la suma de las ventas por cada empleado, seleccionando las columnas (le tenemos que matizar que la columna emp_id la queremos de la tabla employee, para que no tenga conflicto porque ambas tienen el mismo nombre):

`SELECT employee.emp_id,first_name,last_name,SUM(total_sales) FROM employee JOIN works_with ON employee.emp_id = works_with.emp_id GROUP by emp_id` 

Para ello, hemos añadido la función SUM en la zona de SELECT y al final de la consulta la hemos agrupado por id de empleado.


#### Consultas anidadas

Hacemos varias consultas y los resultados de una consulta los usamos en la siguiente consulta. Por ejemplo, para hacer la lista de empleados que han vendido más de 30.000 a un solo cliente, primero hacemos un filtro de las ventas superiores a 30.000:

`SELECT * FROM works_with WHERE total_sales>30000`

Ahora solo vamos a seleccionar los empleados según el id (que nos seleccione sus valores únicos, para lo que usamos DISTINCT:

`SELECT DISTINCT(emp_id) FROM works_with WHERE total_sales>30000`

Ahora cogemos los valores que nos da como resultado (102 y 105) y se los pedimos a la tabla de employee:

`SELECT * FROM employee WHERE emp_id IN (102,105)`

De esta forma, la idea sería anidar las consultas, es decir, coger los valores de una consulta y meterlos en los de la siguiente:

`SELECT * FROM employee WHERE emp_id IN (
    SELECT DISTINCT(emp_id) FROM works_with WHERE total_sales>30000
    )`

Así tenemos una consulta en el interior de otra.

Esta misma consulta se podría hacer con JOIN, pero las consultas anidadas son otra forma de hacerla.

`SELECT DISTINCT(employee.emp_id), first_name FROM employee JOIN works_with ON employee.emp_id = works_with.emp_id WHERE total_sales>30000`


###13/07/2023
## Clase de organización de la información con SQL
#### Con Martín Nadal

En esta clase vamos a importar un archivo SQL, para lo que primero creamos una base de datos, como habitualmente, y luego entramos dentro y en las opciones tenemos importar. Aquí hacemos clic e importamos nuestro archivo.

En este caso, al tratarse de una base de datos que no hemos creado nosotros, primero tenemos que entender qué significa cada columna y qué datos nos da cada una de ellas.

Primero, por ejemplo, vamos a seleccionar los locales cuyo id_epígrafe sea igual a 107001.

`SELECT * FROM locales WHERE id_epigrafe=107001`

Ahora, si queremos encontrar los negocios que tengan relación con pasteles, podemos usar:

`SELECT * FROM epigrafes WHERE desc_epigrafe LIKE "%PASTEL%"`

Con esta base de datos vamos a hacer una consulta anidada en la que se nos muestren los locales en cuyo epígrafe aparezca la palabra pastel:

`SELECT * FROM LOCALES WHERE id_epigrafe IN (SELECT id_epigrafe FROM epigrafes WHERE desc_epigrafe LIKE "%PASTEL%")`

Si lo hacemos con JOIN, el orden es importante. En este caso tenemos qeu poner locales primero, porque no queremos que por cada epígrafe nos devuelva un negocio al azar, sino que lo que buscamos es que nos pase cada local con su epígrafe correspondiente. Si lo hacemos con asterisco y seleccionamos todas las columnas, lo ideal es mostrar solo las columnas en las que estamos interesados, por lo que escribimos lo siguiente:

`SELECT id_local,rotulo,locales.id_epigrafe,desc_epigrafe FROM locales JOIN epigrafes ON epigrafes.id_epigrafe = locales.id_epigrafe WHERE epigrafes.desc_epigrafe LIKE "%pasteleria%"`

Ahora por ejemplo vamos a resolver la duda de cuántos videoclubs quedan en Madrid:

`SELECT id_local,rotulo,locales.id_epigrafe,desc_epigrafe FROM locales JOIN epigrafes ON epigrafes.id_epigrafe = locales.id_epigrafe WHERE epigrafes.desc_epigrafe LIKE "%videoclub%"`

Ahora vamos a ver en qué distrito está cada uno de ellos, por lo que tenemos que juntar también distritos. Vamos a hacer otro JOIN:

`SELECT id_local,rotulo,locales.id_epigrafe,epigrafes.desc_epigrafe,locales.id_distrito_local,distritos.desc_distrito_local FROM locales
JOIN epigrafes ON epigrafes.id_epigrafe = locales.id_epigrafe
JOIN distritos ON locales.id_distrito_local = distritos.id_distrito_local
WHERE epigrafes.desc_epigrafe LIKE "%videoclub%"`

Y ahora añadimos un group by:

`SELECT COUNT(*) AS n_locales,distritos.desc_distrito_local FROM locales
JOIN epigrafes ON epigrafes.id_epigrafe = locales.id_epigrafe
JOIN distritos ON locales.id_distrito_local = distritos.id_distrito_local
WHERE epigrafes.desc_epigrafe LIKE "%videoclub%"
GROUP by locales.id_distrito_local
ORDER BY n_locales DESC`
