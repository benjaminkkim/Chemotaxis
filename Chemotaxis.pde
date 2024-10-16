Bacteria [] ecoli;
Bacteria [] virus;
Bacteria [] corona;
 void setup()
 {
   size(500,500);
   ecoli = new Bacteria[70];
   for(int i = 0; i < ecoli.length; i++){
     ecoli[i] = new Bacteria();
   }
   virus = new Bacteria[70];
   for(int i = 0; i < virus.length; i++){
     virus[i] = new Bacteria();
   }
   corona = new Bacteria[70];
   for(int i = 0; i < virus.length; i++){
     corona[i] = new Bacteria();
   }
 }
 void draw()
 {
   background(128,128,128);
   for(int i = 0; i < ecoli.length; i++){
     ecoli[i].walk();
     ecoli[i].show();
   }
   for(int i = 0; i < ecoli.length; i++){
     virus[i].viruswalk();
     virus[i].virusshow();
   }
   for(int i = 0; i < ecoli.length; i++){
     corona[i].coronawalk();
     corona[i].coronashow();
   }
 }  
 class Bacteria
 {        
   int MyX, MyY;
   Bacteria()
   {
     MyX = width/2;
     MyY = height/2;
   }         
   void walk()
   {
     MyX = MyX + (int)(Math.random()*9)-4;
     MyY = MyY + (int)(Math.random()*9)-4;
   }      
   void show()
   {
     fill(#C04BA0);
     rect(MyX,MyY,30,10,45);
   }  
   void viruswalk()
   {
     MyX = MyX + (int)(Math.random()*11)-5;
     MyY = MyY + (int)(Math.random()*11)-5;
   }
   void virusshow()
   {
     fill(#B9D445);
     ellipse(MyX,MyY,10,10);
   }
   void coronawalk()
   {
     MyX = MyX + (int)(Math.random()*15)-7;
     MyY = MyY + (int)(Math.random()*15)-7;
   }
   void coronashow()
   {
     fill(#FB0100);
     ellipse(MyX,MyY,10,10);
     ellipse(MyX+5,MyY+5,5,5);
     ellipse(MyX-5,MyY+5,5,5);
     ellipse(MyX+5,MyY-5,5,5);
     ellipse(MyX-5,MyY-5,5,5);
   }
 }    
