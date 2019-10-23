//declare bacteria variables here
Bacteria[] bob = {new Bacteria(), new Bacteria()};

void setup()   
{     
 //initialize bacteria variables here  
 size(500,500);
 frameRate(1000);
 bob = new Bacteria [100];
 for(int i = 0; i < bob.length; i++){
   bob[i] = new Bacteria();
 }
}   

void draw()   
{    
 //move and show the bacteria
 background(0, 159, 255);
 for(int i = 0; i < bob.length; i++){
   bob[i].show();
   bob[i].move();
 }
}  
class Bacteria    
{     
 //lots of java!   
 int myX, myY, myColor;
 Bacteria() { // constructor
   myX = 250;
   myY = 250;
   myColor = color(255,255,0);
 }
 void show(){
   fill(myColor);
   ellipse(myX, myY, 100, 100);
   fill(0);
   noStroke();
   ellipse(myX - 20, myY - 20, 20, 20);
   ellipse(myX + 20, myY - 20, 20, 20);
   fill(255);
   arc(myX, myY, 50, 50, 0, PI);
   
 }
 void move(){
   if (mouseX > myX && mouseY > myY){
     myX = myX + (int)(Math.random() * 4);
     myY = myY + (int)(Math.random() * 4);
   } else if(mouseX < myX && mouseY > myY){
     myX = myX - (int)(Math.random() * 4);
     myY = myY + (int)(Math.random() * 4);
   } else if(mouseX > myX && mouseY < myY){
     myX = myX + (int)(Math.random() * 4);
     myY = myY - (int)(Math.random() * 4);
   } else{
     myX = myX - (int)(Math.random() * 4);
     myY = myY - (int)(Math.random() * 4);
   }
 }
}    
