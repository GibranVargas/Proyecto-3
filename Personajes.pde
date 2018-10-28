class Ana implements Personajes
{
  void Menu()
  {
    pushMatrix();
    translate(190,160);
    scale(.1);
    image(Iana,0,0);
    popMatrix();
    
    textSize(20);
    fill(255);
    noStroke();
    text("Ana",224,290);
    
    textSize(12);
  }
  void Select()
  {
    pushMatrix();
    translate(20,210);
    scale(.1);
    image(Iana,0,0);
    popMatrix();
  }
  void Pelea()
  {
    pushMatrix();
    translate(50,250);
    scale(.2);
    image(Iana,0,0);
    popMatrix();
  }
}

class Sandra implements Personajes
{
  void Menu()
  {
    pushMatrix();
    translate(85,0);
    scale(.7);
    image(Isandra,0,0);
    popMatrix();
    
    textSize(20);
    fill(255);
    noStroke();
    text("Sandra",364,290);
  }
  void Select()
  {
    pushMatrix();
    translate(-230,55);
    scale(.7);
    image(Isandra,0,0);
    popMatrix();
  }
  void Pelea()
  {
    pushMatrix();
    translate(-290,80);
    image(Isandra,0,0);
    popMatrix();
  }
}
 class Soldado implements Personajes
 {
   void Menu()
  {
    pushMatrix();
    translate(510,160);
    scale(.2);
    image(Isoldado,0,0);
    popMatrix();
    
    textSize(20);
    fill(255);
    noStroke();
    text("Soldado",524,290);
    
    textSize(12);
  } 
  void Select()
  {
    pushMatrix();
    translate(30,210);
    scale(.2);
    image(Isoldado,0,0);
    popMatrix();
  }
  void Pelea()
  {
    pushMatrix();
    translate(50,250);
    scale(.4);
    image(Isoldado,0,0);
    popMatrix();
  }
 }
 class Tracer implements Personajes
  {
  void Menu()
  {
    pushMatrix();
    translate(190,360);
    scale(.1);
    image(Itracer,0,0);
    popMatrix();
    
    textSize(20);
    fill(255);
    noStroke();
    text("Tracer",214,490);
    
    textSize(12);
  }
  
  void Select()
  {
    pushMatrix();
    translate(30,210);
    scale(.1);
    image(Itracer,0,0);
    popMatrix();
  }
  void Pelea()
  {
    pushMatrix();
    translate(50,245);
    scale(.2);
    image(Itracer,0,0);
    popMatrix();
  }
}
class Winston implements Personajes
{
  void Menu()
  {
    pushMatrix();
    translate(350,360);
    scale(.2);
    image(Iwinston,0,0);
    popMatrix();
    
    textSize(20);
    fill(255);
    noStroke();
    text("Winston",364,490);
    
    textSize(12);
  }
  void Select()
  {
    pushMatrix();
    translate(30,210);
    scale(.2);
    image(Iwinston,0,0);
    popMatrix();
  }
  void Pelea()
  {
    pushMatrix();
    translate(50,250);
    scale(.4);
    image(Iwinston,0,0);
    popMatrix();
  }
}
