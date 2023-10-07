#### 17/07/2023
## Sesión de svelte.dev con Lázaro Gamio

Vamos a ver primer qué es svelte, luego algunos ejemplos y trataremos de hacer algo con Svelte.

Es muy parecido a Vue o React, pero funciona con mayor rapidez y con un pre-render en el server, que permite que exista el contenido sin necesidad de que el usuario espere al Javascript. Permite usar cualquier herramienta, incluyendo d3.js. Sin embargo, hay que tener en cuenta que usar lo mínimo de recursos de JS es mejor para que un proyecto funcione mejor en el móvil.

Usando una viewbox="0 0 100 100" permite que se pueda adaptar el gráfico a cualquier tamaño. El formato de archivo es un .svg. Así, se pueden hacer gráficos de menor peso. Para hacer cosas de svelte localmente, lo ideal es usar sveltekit. También se puede hacer un vídeo con svelte, incluso, algo estilo animación, por ejemplo, con [Threlte](https://threlte.xyz/).

Para hacer mapas, recomienda mapbox como estándar. Para ello también podemos usar [ai2html](http://ai2html.org/), aunque no es software libre, sino que está asociado a Adobe Illustrator.
