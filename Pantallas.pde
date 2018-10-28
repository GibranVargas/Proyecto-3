class PInicio implements Pantallas
{
  void display()
  {
    background(0);
    image(Imenu,-215,65);
  
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>330) && (mouseX<460) &&
    (mouseY>380) && (mouseY<410))
    {
      mousePressed=false;
      pantalla=2;
    }
    else
    {
      if((mousePressed) &&
      (mouseButton==LEFT) &&
      (mouseX>335) && (mouseX<450) &&
      (mouseY>430) && (mouseY<470))
      {
        exit();
      }
    }
  }
}
class PPelea implements Pantallas
{
  void display()
  {
     
    pushMatrix();
    if(pfondo==1)
    {
      translate(-50,-45);
      scale(.5);
      image(Idorado,0,0);
    }
    if(pfondo==2 || pfondo==3)
    {
      translate(-50,-45);
      scale(1.8);
      image(Iindustria,0,0);
    }
    popMatrix();
    
    switch(J1)
    {
      case 1:
          ana.Pelea();
          break;
        case 2:
          sandra.Pelea();
          break;
        case 3:
          soldado.Pelea();
          break;
        case 4:
          tracer.Pelea();
          break;
        case 5:
          winston.Pelea();
          break;
    }
    switch(J2)
    {
      case 1:
          pushMatrix();
          translate(810,0);
          scale(-1,1);
          ana.Pelea();
          popMatrix();
          break;
        case 2:
          pushMatrix();
          translate(790,0);
          scale(-1,1);
          sandra.Pelea();
          popMatrix();
          break;
        case 3:
          pushMatrix();
          translate(800,0);
          scale(-1,1);
          soldado.Pelea();
          popMatrix();
          break;
        case 4:
          pushMatrix();
          translate(785,0);
          scale(-1,1);
          tracer.Pelea();
          popMatrix();
          break;
        case 5:
          pushMatrix();
          translate(800,0);
          scale(-1,1);
          winston.Pelea();
          popMatrix();
          break;
    }
  }
}
class PPersonajes implements Pantallas
{
  
  int x1=round(random(1,5));
  int x2=round(random(1,5));
  void display()
  {
    
    size(800,600);
    background(0);
    
    fill(248,134,6);
    noStroke();
    
    rect(180,150,120,120);
    rect(340,150,120,120);
    rect(500,150,120,120);
    
    rect(180,350,120,120);
    rect(340,350,120,120);
    rect(500,350,120,120);
    
    fill(0);
    rect(185,155,110,110);
    rect(345,155,110,110);
    rect(505,155,110,110);
    
    rect(185,355,110,110);
    rect(345,355,110,110);
    rect(505,355,110,110);
    
    fill(255);
    rect(50,320,10,10);
    rect(60,320,10,10);
    rect(70,320,10,10);
    rect(70,330,10,10);
    rect(70,340,10,10);
    rect(70,350,10,10);
    rect(70,360,10,10);
    rect(60,360,10,10);
    rect(50,360,10,10);
    rect(50,350,10,10);
    
    rect(100,320,10,10);
    rect(100,330,10,10);
    rect(90,330,10,10);
    rect(100,340,10,10);
    rect(100,350,10,10);
    rect(100,360,10,10);
    rect(90,360,10,10);
    rect(110,360,10,10);
    
    rect(690,320,10,10);
    rect(700,320,10,10);
    rect(710,320,10,10);
    rect(710,330,10,10);
    rect(710,340,10,10);
    rect(710,350,10,10);
    rect(710,360,10,10);
    rect(700,360,10,10);
    rect(690,360,10,10);
    rect(690,350,10,10);
    
    rect(730,320,10,10);
    rect(740,320,10,10);
    rect(750,320,10,10);
    rect(750,330,10,10);
    rect(730,340,10,10);
    rect(740,340,10,10);
    rect(750,340,10,10);
    rect(730,350,10,10);
    rect(730,360,10,10);
    rect(740,360,10,10);
    rect(750,360,10,10);
    
    pushMatrix();
    scale(.7,.7);
    translate(230,160);
    rect(530,400,10,10);
    rect(540,400,10,10);
    rect(530,390,10,10);
    rect(540,390,10,10);
    rect(530,380,10,10);
    rect(540,380,10,10);
    rect(540,370,10,10);
    rect(550,370,10,10);
    rect(560,370,10,10);
    rect(570,370,10,10);
    rect(580,370,10,10);
    rect(580,380,10,10);
    rect(590,380,10,10);
    rect(580,390,10,10);
    rect(590,390,10,10);
    rect(580,400,10,10);
    rect(590,400,10,10);
    rect(580,410,10,10);
    rect(590,410,10,10);
    rect(570,410,10,10);
    rect(570,420,10,10);
    rect(560,420,10,10);
    rect(570,430,10,10);
    rect(560,430,10,10);
    rect(570,450,10,10);
    rect(560,450,10,10);
    rect(570,460,10,10);
    rect(560,460,10,10);
    popMatrix();
    
    ana.Menu();
    soldado.Menu();
    tracer.Menu();
    sandra.Menu();
    winston.Menu(); 
    
    if(turno==1)
    {
      seleccionJ1();
    }
    if(selec1>0 && selec1<=6)
    {
      turno=2;
    }
    if(turno==2)
    { 
      fill(248,134,6);
      noStroke();
      rect(50,320,10,10);
      rect(60,320,10,10);
      rect(70,320,10,10);
      rect(70,330,10,10);
      rect(70,340,10,10);
      rect(70,350,10,10);
      rect(70,360,10,10);
      rect(60,360,10,10);
      rect(50,360,10,10);
      rect(50,350,10,10);
      
      rect(100,320,10,10);
      rect(100,330,10,10);
      rect(90,330,10,10);
      rect(100,340,10,10);
      rect(100,350,10,10);
      rect(100,360,10,10);
      rect(90,360,10,10);
      rect(110,360,10,10);
      
      switch(selec1)
      {
        case 1:
          ana.Select();
          break;
        case 2:
          sandra.Select();
          break;
        case 3:
          soldado.Select();
          break;
        case 4:
          tracer.Select();
          break;
        case 5:
          winston.Select();
          break;
      }
      seleccionJ2();
      if(selec2>0 && selec2<=6)
      {
        turno=3;
      }
    }
    if(turno==3)
    {
      fill(248,134,6);
      noStroke();
      rect(690,320,10,10);
      rect(700,320,10,10);
      rect(710,320,10,10);
      rect(710,330,10,10);
      rect(710,340,10,10);
      rect(710,350,10,10);
      rect(710,360,10,10);
      rect(700,360,10,10);
      rect(690,360,10,10);
      rect(690,350,10,10);
      
      rect(730,320,10,10);
      rect(740,320,10,10);
      rect(750,320,10,10);
      rect(750,330,10,10);
      rect(730,340,10,10);
      rect(740,340,10,10);
      rect(750,340,10,10);
      rect(730,350,10,10);
      rect(730,360,10,10);
      rect(740,360,10,10);
      rect(750,360,10,10);
      
      switch(selec2)
      {
        case 1:
          pushMatrix();
          translate(800,0);
          scale(-1,1);
          ana.Select();
          popMatrix();
          break;
        case 2:
          pushMatrix();
          translate(810,0);
          scale(-1,1);
          sandra.Select();
          popMatrix();
          break;
        case 3:
          pushMatrix();
          translate(800,0);
          scale(-1,1);
          soldado.Select();
          popMatrix();
          break;
        case 4:
          pushMatrix();
          translate(800,0);
          scale(-1,1);
          tracer.Select();
          popMatrix();
          break;
        case 5:
          pushMatrix();
          translate(800,0);
          scale(-1,1);
          winston.Select();
          popMatrix();
          break;
      }
      
      fill(0);
      stroke(color(255));
      rect(200,160,400,300);
      
      fill(255);
      rect(355,275,90,40);
      
      fill(0);
      rect(360,280,80,30);
      
      fill(255);
      text("CONTINUAR",365,300);
      
      if((mousePressed) &&
      (mouseButton==LEFT) &&
      (mouseX>355) && (mouseX<445) &&
      (mouseY>275) && (mouseY<315))
      {
        pantalla=3;
      }
    }
  }
  void seleccionJ1()
  {
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>185) && (mouseX<295) &&
    (mouseY>155) && (mouseY<265))
    {
      mousePressed=false;
      selec1=1;
      J1=1;
    }
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>345) && (mouseX<455) &&
    (mouseY>155) && (mouseY<265))
    {
      mousePressed=false;
      selec1=2;
      J1=2;
    }
    
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>505) && (mouseX<615) &&
    (mouseY>155) && (mouseY<265))
    {
      mousePressed=false;
      selec1=3;
      J1=3;
    }
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>185) && (mouseX<295) &&
    (mouseY>355) && (mouseY<465))
    {
      mousePressed=false;
      selec1=4;
      J1=4;
    }
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>345) && (mouseX<455) &&
    (mouseY>355) && (mouseY<465))
    {
      mousePressed=false;
      selec1=5;
      J1=5;
    }
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>505) && (mouseX<615) &&
    (mouseY>355) && (mouseY<465))
    {
      mousePressed=false;
      selec1=this.x1;
      J1=selec1;
    }
  }
  void seleccionJ2()
  {
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>185) && (mouseX<295) &&
    (mouseY>155) && (mouseY<265))
    {
      mousePressed=false;
      selec2=1;
      J2=1;
    }
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>345) && (mouseX<455) &&
    (mouseY>155) && (mouseY<265))
    {
      mousePressed=false;
      selec2=2;
      J2=2;
    }
    
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>505) && (mouseX<615) &&
    (mouseY>155) && (mouseY<265))
    {
      mousePressed=false;
      selec2=3;
      J2=3;
    }
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>185) && (mouseX<295) &&
    (mouseY>355) && (mouseY<465))
    {
      mousePressed=false;
      selec2=4;
      J2=4;
    }
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>345) && (mouseX<455) &&
    (mouseY>355) && (mouseY<465))
    {
      mousePressed=false;
      selec2=5;
      J2=5;
    }
    if((mousePressed) &&
    (mouseButton==LEFT) &&
    (mouseX>505) && (mouseX<615) &&
    (mouseY>355) && (mouseY<465))
    {
      mousePressed=false;
      selec2=this.x2;
      J2=selec2;
    }
  }
}
