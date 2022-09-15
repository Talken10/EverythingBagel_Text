float angle = 1;
PFont myfont; //first step to creating font. create place for object
PFont myfont2;
PImage myShape; 
int i = 1;
void setup()
{

 size(800,800);
 myfont = createFont("Quicksand-Bold.ttf",80);//second step, add object to existing typeface
 myfont2 = createFont("Quicksand-Regular.ttf",30);
 
 String[] fontList = PFont.list();
 for(int i = 0; i < fontList.length; i = i + 1);//prints off list of available fonts 
   {
    println(fontList[i]);
   }
   

   
}

void draw()
{
  //text needs 3 parimeters, ("the text", x position, y position)
translate(width/2, height/2);
   myShape = loadImage("STScI-J-v1927a-thumb.jpg");
 myShape.resize(width,height);
   background(myShape);

pushMatrix();
 noFill();
 strokeWeight(80);
 stroke(color(0));
 circle(0,0,200);
popMatrix();

pushMatrix();
 noFill();
 strokeWeight(2);
 stroke(color(255));
 circle(0,0,250);
popMatrix();

pushMatrix();
fill(color(255,255,255,255)); 
 textSize(80);
 textFont(myfont); //third add to the font
 textAlign(CENTER,CENTER);//position is the bottom center of the textbox (changing the axis point)
 text("Everything Bagel", 0,0); 
 popMatrix();
 
 pushMatrix();
 fill(color(255,255,255,255)); 
 textSize(35);
 textFont(myfont2);
 textAlign(CENTER,CENTER);//position is the bottom center of the textbox (changing the axis point)
 text("everything. everywhere. all at once.", 0,170);
 popMatrix();

pushMatrix();
fill(255);
strokeWeight(0);
rotate(radians(angle/.1));
circle(100,130,25);
popMatrix();

angle  = angle - 1;

}
