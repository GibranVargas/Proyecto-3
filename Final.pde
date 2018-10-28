import ddf.minim.*;

Personajes ana, sandra, soldado, tracer, winston;
Pantallas inicio, pelea, seleccion;
CambioPantalla cambio;
Juego juego;
Reinicio reiniciar;
/////////////////Música
Minim soundengine;
AudioSample Cancion;
////////////////Imagenes
PImage Iana;
PImage Isoldado;
PImage Iwinston;
PImage Itracer;
PImage Isandra;
PImage Idorado;
PImage Iindustria;
PImage Iboton1;
PImage Iboton2;
PImage Imenu;
///////////////Variables
int pantalla=1;
int J1, J2;
int selec1, selec2;
int turno=1;
float pfondo; 

void setup()
{
  size(800,600);
  background(30);
  pfondo = round(random(1,3));
  //Imagenes
  Iana = new PImage();
  Iana = loadImage("ana.png");
  Isandra = new PImage();
  Isandra = loadImage("sandra.png");
  Isoldado = new PImage();
  Isoldado = loadImage("soldado.png");
  Iwinston = new PImage();
  Iwinston = loadImage("winston.png");
  Itracer = new PImage();
  Itracer = loadImage("tracer.png");
  Idorado = new PImage();
  Idorado = loadImage("dorado.jpg");
  Iindustria = new PImage();
  Iindustria = loadImage("industrias.jpg");
  Iboton1 = new PImage();
  Iboton1 = loadImage("boton1.png");
  Iboton2 = new PImage();
  Iboton2 = loadImage("boton2.png");
  Imenu = new PImage();
  Imenu = loadImage("menu.png");
  //Audio
  soundengine = new Minim(this);
  Cancion = soundengine.loadSample("overwatch.mp3", 1024);
  Cancion.trigger();
  
  reiniciar = new Reinicio();
  inicio = new PInicio();
  soldado= new Soldado();
  ana = new Ana();
  tracer = new Tracer();
  winston = new Winston();
  sandra = new Sandra();
  cambio = new CambioPantalla();
  pelea = new PPelea();
  juego = new Juego();
  seleccion = new PPersonajes();
  
}

void draw()
{
  cambio.Cambio();      
  fill(255);
  textSize(12);
  text("USA EL RATON",350,580);
}
