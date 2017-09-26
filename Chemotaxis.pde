int x,y,food;
PImage leg, ghost;
Bacteria [] dots;
void setup()    
{     
   size (300,300);
   background(0);
   dots = new Bacteria[50];
   x = 150;
   y = 150;
   food = 0;
   leg = loadImage("leg.png");
   ghost = loadImage("ghost.png");
   for (int i=1; i<dots.length; i++)
   {
    dots[i] = new Bacteria(x,y); 
   }
}   
void draw()   
{    
   background(0);
   fill(255);
   if (food == 1)
   {
     /*
     fill(0,255,0);
     ellipse(mouseX,mouseY,20,20);
     */
     image(leg,mouseX-14,mouseY-15);
   }
   if (food == -1)
   {
     /*
     fill(255,0,0);
     rect(mouseX-10,mouseY-10,20,20);
     */
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
    Bacteria(int x,int y)
    {
     myX = x;
     myY = y;
     myC = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    }
    void show()
    {
      fill(myC);
      ellipse(myX,myY,10,10);
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