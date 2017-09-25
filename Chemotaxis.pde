int x,y,i;
Bacteria [] dots;
void setup()    
{     
   size (300,300);
   background(0);
   dots = new Bacteria[50];
   x = 150;
   y = 150;
   for (i=1; i<dots.length; i++)
   {
    dots[i] = new Bacteria(x,y); 
   }
}   
void draw()   
{    
   background(0);
   ellipse(mouseX,mouseY,10,10);
   for (i=1; i<dots.length; i++)
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
      myX = myX + (int)(Math.random()*6-3);
      myY = myY + (int)(Math.random()*6-3);
    }
}    
void mousePressed()
{

}