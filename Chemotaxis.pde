int food;
PImage leg, ghost;
Bacteria [] dots;
void setup()    
{     
   size (300,300);
   background(0);
   dots = new Bacteria[50];
   food = 0;
   leg = loadImage("leg.png");
   ghost = loadImage("ghost.png");
   for (int i=1; i<dots.length; i++)
   {
    dots[i] = new Bacteria(); 
   }
}   
void draw()   
{    
   background(0);
   fill(255);
   if (food == 1)
   {
     image(leg,mouseX-14,mouseY-15);
   }
   if (food == -1)
   {
     image(ghost,mouseX-21,mouseY-21);
   }
   for (int i=1; i<dots.length; i++)
   {
     dots[i].move();
     dots[i].show();
   }
}  
class Bacteria    
{     
    int myX,myY,myC;
    double talk;
    Bacteria()
    {
     myX = (int)(Math.random()*300+1);
     myY = (int)(Math.random()*300+1);
     myC = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     talk = Math.random()*0.9; 
    }
    void show()
    {
      fill(myC);
      ellipse(myX,myY,10,10);
      if (food == 0)
      {
       if (talk<0.3) 
       text("Magic is real",myX,myY);
       else if (talk>0.6)
       text("Nyeh",myX,myY);
       else
       text("I have too much free time",myX,myY);
      }
      if (food ==1)
      {
       if (talk>=0.6)
       text("Yay",myX,myY);
       else if (talk < 0.3)
       text("Gimme",myX,myY);
       else
       text("That's mine", myX,myY);
      }
      if (food == -1)
      {
       if (talk < 0.3)
       text("Help",myX,myY);
       else if (talk>0.6)
       text("Goodbye",myX,myY);
       else
       text("I'm ok with this",myX,myY);
      }
    }
    void move()
    {
      if (mouseX > myX) 
      myX = myX + (int)(Math.random()*6-3+food);
      else 
      myX = myX + (int)(Math.random()*6-3-food);
      if (mouseY > myY)
      myY = myY + (int)(Math.random()*6-3+food);
      else
      myY = myY + (int)(Math.random()*6-3-food);
    }
}    
void mousePressed()
{
  food = food + 1;
  if (food == 2)
  food = -1;
}