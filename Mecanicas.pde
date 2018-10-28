class CambioPantalla
{
  void Cambio()
  {
    switch(pantalla)
    {
    case 1:
      pushMatrix();
      translate(160,-130);
      inicio.display();
      popMatrix();
      break;
    case 2:
      seleccion.display();
      break;
    case 3:
      pelea.display();
      juego.pelea();
    }
  }
}class Juego
{
  int V1=100;
  int V2=100;
  int T=1;
  int SJ1=0;
  int SJ2=0;
  int G;
  void pelea()
  {
    fill(0);
    rect(0,500,800,200);
    vida();
    if(this.V1>0 && this.V2>0)
    {
        botones();
    }
    if(this.V1<=0 || this.V2<=0)
    {//acaba la batalla
      ganador();
    }
  }
  void botones()
  {
    pushMatrix();
    scale(.15);
    translate(1000,3220);
    image(Iboton1,0,0);
    image(Iboton1,0,300);
    image(Iboton2,-500,130);
    popMatrix();
    
    if(this.SJ1<100)
    {
      //su aun no carga su habilidad
    }
    
    pushMatrix();
    translate(648,482);
    scale(-1,1);
    scale(.15);
    image(Iboton1,0,0);
    image(Iboton1,0,300);
    image(Iboton2,-500,130);
    popMatrix();
    
    if(this.SJ2<100)
    {
      // si aun no carga la habilidad jugador 2
    }
    
    fill(255);
    textSize(12);
    text("NORMAL",193,525);
    text("FUERTE",195,570);
    text("U",140,520);
    text("L",140,535);
    text("T",140,550);
    text("R",140,565);
    text("A",140,580);
    text("NORMAL",555,525);
    text("FUERTE",558,570);
    text("U",650,520);
    text("L",650,535);
    text("T",650,550);
    text("R",650,565);
    text("A",650,580);
    text("JUGADOR",365,565);
    
    if(T==1)
    {
      fill(255);
      textSize(60);
      text("1",370,550);
      if((mousePressed) &&
      (mouseButton==LEFT) &&
      (mouseX>172) && (mouseX<262) &&
      (mouseY>512) && (mouseY<532))
      {
        this.G=round(random(1,3));
        switch(this.G)
        {
          case 1:
            //fallo
            this.T+=1;
            fill(255,0,0);
            textSize(15);
            text("FALLO",35,550);
            break;
          case 2:
            //normal
            this.V2-=3;
            if(this.V2<0)
              this.V2=0;
            this.SJ1+=10;
            if(this.SJ1>100)
              this.SJ1=100;
            this.T+=1;
            fill(255,0,0);
            textSize(15);
            text("BIEN",35,550);
            break;
          case 3:
            //critico
            this.V2-=5;
            if(this.V2<0)
              this.V2=0;
            this.SJ1+=15;
            if(this.SJ1>100)
              this.SJ1=100;
            this.T+=1;
            fill(255,0,0);
            textSize(15);
            text("CRITICO",35,550);
        }
      }
      if((mousePressed) &&
      (mouseButton==LEFT) &&
      (mouseX>172) && (mouseX<262) &&
      (mouseY>557) && (mouseY<579))
      {
        this.G=round(random(1,6));
        switch(this.G)
        {
          case 1:
            //fallo
            this.T+=1;
            fill(255,0,0);
            textSize(15);
            text("FALLO",35,550);
            break;
          case 2:
            //fallo
            this.T+=1;
            fill(255,0,0);
            textSize(15);
            text("FALLO",35,550);
            break;
          case 3:
            //fallo
            this.T+=1;
            fill(255,0,0);
            textSize(15);
            text("FALLO",35,550);
            break;
          case 4:
            //normal
            this.V2-=4;
            if(this.V2<0)
              this.V2=0;
            this.SJ1+=12;
            if(this.SJ1>100)
              this.SJ1=100;
            this.T+=1;
            fill(255,0,0);
            textSize(15);
            text("BIEN",35,550);
            break;
          case 5:
            //normal
            this.V2-=4;
            if(this.V2<0)
              this.V2=0;
            this.SJ1+=12;
            if(this.SJ1>100)
              this.SJ1=100;
            this.T+=1;
            fill(255,0,0);
            textSize(15);
            text("BIEN",35,550);
            break;
          case 6:
            //critico
            this.V2-=8;
            if(this.V2<0)
              this.V2=0;
            this.SJ1+=20;
            if(this.SJ1>100)
              this.SJ1=100;
            this.T+=1;
            fill(255,0,0);
            textSize(15);
            text("CRITICO",35,550);
        }
      }
      if((mousePressed) &&
      (mouseButton==LEFT) &&
      (mouseX>131) && (mouseX<155) &&
      (mouseY>505) && (mouseY<588))
      {
        if(this.SJ1>=100)
        {
          this.G=round(random(1,3));
          switch(this.G)
          {
            case 1:
              //fallo
              this.T+=1;
              fill(255,0,0);
              textSize(15);
              text("FALLO",35,550);
              break;
            case 2:
              //normal
              this.V2-=10;
            if(this.V2<0)
              this.V2=0;
              this.SJ1=0;
              this.T+=1;
              fill(255,0,0);
              textSize(15);
              text("BIEN",35,550);
              break;
            case 3:
              //critico
              this.V2-=15;
            if(this.V2<0)
              this.V2=0;
              this.SJ1=0;
              this.T+=1;
              fill(255,0,0);
              textSize(15);
              text("CRITICO",35,550);
           }
        }
      }
    }
    if(T==2)
    {
      fill(255);
      textSize(60);
      text("2",370,550);
      if((mousePressed) &&
      (mouseButton==LEFT) &&
      (mouseX>536) && (mouseX<625) &&
      (mouseY>512) && (mouseY<532))
      {
        this.G=round(random(1,3));
        switch(this.G)
        {
          case 1:
            //fallo
            this.T-=1;
            fill(255,0,0);
            textSize(15);
            text("FALLO",715,550);
            break;
          case 2:
            //normal
            this.V1-=3;
            if(this.V1<0)
              this.V1=0;
            this.SJ2+=10;
            if(this.SJ2>100)
              this.SJ2=100;
            this.T-=1;
            fill(255,0,0);
            textSize(15);
            text("BIEN",715,550);
            break;
          case 3:
            //critico
            this.V1-=5;
            if(this.V1<0)
              this.V1=0;
            this.SJ2+=15;
            if(this.SJ2>100)
              this.SJ2=100;
            this.T-=1;
            fill(255,0,0);
            textSize(15);
            text("CRITICO",715,550);
        }
      }
      if((mousePressed) &&
      (mouseButton==LEFT) &&
      (mouseX>535) && (mouseX<625) &&
      (mouseY>556) && (mouseY<578))
      {
        this.G=round(random(1,6));
        switch(this.G)
        {
          case 1:
            //fallo
            this.T-=1;
            fill(255,0,0);
            textSize(15);
            text("FALLO",715,550);
            break;
          case 2:
            //fallo
            this.T-=1;
            fill(255,0,0);
            textSize(15);
            text("FALLO",715,550);
            break;
          case 3:
            //fallo
            this.T-=1;
            fill(255,0,0);
            textSize(15);
            text("FALLO",715,550);
            break;
          case 4:
            //normal
            this.V1-=4;
            if(this.V1<0)
              this.V1=0;
            this.SJ2+=12;
            if(this.SJ2>100)
              this.SJ2=100;
            this.T-=1;
            fill(255,0,0);
            textSize(15);
            text("BIEN",715,550);
            break;
          case 5:
            //normal
            this.V1-=4;
            if(this.V1<0)
              this.V1=0;
            this.SJ2+=12;
            if(this.SJ2>100)
              this.SJ2=100;
            this.T-=1;
            fill(255,0,0);
            textSize(15);
            text("BIEN",715,550);
            break;
          case 6:
            //critico
            this.V1-=8;
            if(this.V1<0)
              this.V1=0;
            this.SJ2+=20;
            if(this.SJ2>100)
              this.SJ2=100;
            this.T-=1;
            fill(255,0,0);
            textSize(15);
            text("CRITICO",715,550);
        }
      }
      if((mousePressed) &&
      (mouseButton==LEFT) &&
      (mouseX>642) && (mouseX<666) &&
      (mouseY>505) && (mouseY<585))
      {
        if(this.SJ2>=100)
        {
          this.G=round(random(1,3));
          switch(this.G)
          {
            case 1:
              //fallo
              this.T-=1;
              fill(255,0,0);
              textSize(15);
              text("FALLO",715,550);
              break;
            case 2:
              //normal
              this.V1-=10;
            if(this.V1<0)
              this.V1=0;
              this.SJ2=0;
              this.T-=1;
              fill(255,0,0);
              textSize(15);
              text("BIEN",715,550);
              break;
            case 3:
              //critico
              this.V1-=15;
            if(this.V1<0)
              this.V1=0;
              this.SJ2=0;
              this.T-=1;
              fill(255,0,0);
              textSize(15);
              text("CRITICO",715,550);
            }
         }
      }
    }
  }
  
  void vida()
  {
    fill(0);
    noStroke();
    
    rect(100,60,200,20);
    rect(100,85,100,15);
    
    fill(0,255,0);
    noStroke();
    rect(100,60,this.V1*2,20);
    
    
    fill(0,0,255);
    noStroke();
    rect(100,85,this.SJ1,15);
    fill(0);
    textSize(12);
    text("U L T R A",123,96);
    
    pushMatrix();
    translate(800,0);
    scale(-1,1);
    
    fill(0);
    noStroke();
    rect(100,60,200,20);
    rect(100,85,100,15);
    
    fill(0,255,0);
    noStroke();
    rect(100,60,this.V2*2,20);
    
    fill(0,0,255);
    noStroke();
    rect(100,85,this.SJ2,15);
    
    popMatrix();
    fill(0);
    textSize(12);
    text("U L T R A",625,96);
    }
    void ganador()
    {
      if(this.V1==0)
      {//gano el jugador 2
        fill(0);
        noStroke();
        rect(50,200,250,250);
        fill(255);
        textSize(15);
        text("GANA JUGADOR",120,280);
        text("CONTINUAR",130,380);
        rect(160,300,10,10);
        rect(170,300,10,10);
        rect(180,300,10,10);
        rect(180,310,10,10);
        rect(160,320,10,10);
        rect(170,320,10,10);
        rect(180,320,10,10);
        rect(160,330,10,10);
        rect(160,340,10,10);
        rect(170,340,10,10);
        rect(180,340,10,10);
        if((mousePressed) &&
        (mouseButton==LEFT) &&
        (mouseX>130) && (mouseX<220) &&
        (mouseY>369) && (mouseY<380))
          {
            pantalla=1;
            reiniciar.reiniciar();
          }
      }
      else
      {
        if(this.V2==0)
        {//gano el jugador 1
          fill(0);
          noStroke();
          rect(500,200,250,250);
          fill(255);
          textSize(15);
          text("GANA JUGADOR",570,280);
          text("CONTINUAR",580,380);
          rect(620,300,10,10);
          rect(620,310,10,10);
          rect(610,310,10,10);
          rect(620,320,10,10);
          rect(620,330,10,10);
          rect(620,340,10,10);
          rect(610,340,10,10);
          rect(630,340,10,10);
          
          if((mousePressed) &&
          (mouseButton==LEFT) &&
          (mouseX>580) && (mouseX<670) &&
          (mouseY>369) && (mouseY<380))
          {
            pantalla=1;
            reiniciar.reiniciar();
          }
        }
      }
    }
  }
  class Reinicio
 {
  void reiniciar()
  {
    J1=0;
    J2=0;
    juego.V1=100;
    juego.V2=100;
    juego.T=1;
    juego.SJ1=0;
    juego.SJ2=0;
    turno=1;
    selec1=0;
    selec2=0;
  }
}
