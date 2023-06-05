// Variables globales

let img;   // Declaración de variables

function preload() {
  
}


function setup() {
  createCanvas(640, 360);

  // de la siguiente forma cargaríamos una imagen
  // img = loadImage('https://d33wubrfki0l68.cloudfront.net/3c988a78f4ddfdf4302932d866feda499368476d/d1ae7/img/openrefine_logo.svg');

  loadData('Downloads/totales_escrutinio_4_301.csv') //para cargar datos
}


function draw() {
  image (img, 0, 0, width, height);  // visualizo la imagen
}
