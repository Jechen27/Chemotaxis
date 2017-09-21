int x,y,i;
Bacteria [] dots;
void setup()    
{     
   size (300,300);
   background(0);
   dots = new Bacteria[50];
   for (i=1; i<dots.length; i++)
   {
    dots[i] = new Bacteria(); 
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
    Bacteria(int x,int y,)
    {
     myX = x;
     myY = y;
     myC = ((int)Math.random()*256);
    }
    void show()
    {
      
    }
    void move()
    {
      
    }
}    
void mousePressed()
{

}