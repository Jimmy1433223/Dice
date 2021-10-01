void setup()
{
  size(600, 700);
  noLoop();
}
void draw()
{
  background(192);
  String headline = "Total value of dices: ";
  int sum = 0;
  textSize(30);
  for (int i = 0; i <= 600; i += 50){
    for (int j = 0; j <= 600; j += 50){
      Die dice = new Die(i, j);
      sum += dice.rand_num;
      dice.show();
    }
  }
  text(headline + sum,50,680);
}
void mousePressed()
{
  background(192);
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here                                                      
  int rand_num;
  int myX;
  int myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    rand_num = (int)(Math.random()*6)+1;
  }
  void show()
  {
    if (rand_num == 1) {
      fill(255);
      rect(myX, myY, 50, 50, 8);
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
    } 
    else if (rand_num == 2) {
      fill(255);
      rect(myX, myY, 50, 50, 8);
      fill(0);
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
    } 
    else if (rand_num == 3) {
      fill(255);
      rect(myX, myY, 50, 50, 8);
      fill(0);
      ellipse(myX + 25, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    }
    else if (rand_num == 4) {
      fill(255);
      rect(myX, myY, 50, 50, 8);
      fill(0);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    }
    else if (rand_num == 5){
      fill(255);
      rect(myX, myY, 50, 50, 8);
      fill(0);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    else if (rand_num == 6){
      fill(255);
      rect(myX, myY, 50, 50, 8);
      fill(0);
      ellipse(myX + 15, myY + 10, 10, 10);
      ellipse(myX + 35, myY + 10, 10, 10);
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 40, 10, 10);
      ellipse(myX + 35, myY + 40, 10, 10);
    }
  }
}
