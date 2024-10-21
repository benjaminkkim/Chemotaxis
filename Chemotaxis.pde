Move [] colors;
class Move{
  int myX, myY, myColor;
  Move(){
    myColor = color(255,255,255);
    myX = width/2;
    myY = height/2;
  }
  Move(int x, int y){
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void walk(){
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show(){
    fill(myColor);
    noStroke();
    ellipse(myX,myY,5,5);
  }
}
void mousePressed(){
  background(200);
  redraw();
  int myX = 250;
  int myY = 250;
  if(mouseX < myX){
    myX = myX - (int)(Math.random()*500);
  }
  if(mouseY > myX){
    myX = myX + (int)(Math.random()*500);
  }
  if(mouseY < myY){
    myY = myY - (int)(Math.random()*500);
  }
  if(mouseY > myY){
    myY = myY + (int)(Math.random()*500);
  }
}
void setup(){
  background(200);
  size(500,500);
  colors = new Move[3000];
  for(int i = 0; i < colors.length; i++){
    colors[i] = new Move((int)(Math.random()*width), (int)(Math.random()*height));
  }
}
void draw(){
  int x = 250;
  ellipse(x,250,3,3);
  for(int i = 0; i < colors.length; i++){
    colors[i].walk();
    colors[i].show();
  }
}
