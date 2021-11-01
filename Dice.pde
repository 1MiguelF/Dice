void setup()
{
  noLoop();
  size(1000, 1000);
  background(181, 75, 67);
}
void draw()
{
  int sum = 0;
  for (int x = 200; x <= 600; x+=200) {
    for (int y = 200; y <= 600; y+=200) {
      fill(255);
      Die singularDie;
      singularDie = new Die(x, y);
      singularDie.roll();
      singularDie.show();
      sum = sum + singularDie.faceValue;
    }
  }
  text("Total: " + sum, 455, 900);
}
void mousePressed()
{
  redraw();
}

class Die
{
  int myX, myY, dieSize, faceValue;

  
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    dieSize = 150;
    faceValue = (int)(Math.random()*6)+1;
  }
  void roll()
  {
    faceValue = (int)(Math.random()*6)+1;
  }
  void show()
  {
    square(myX, myY, dieSize);
    for(int i = 1; i <=1; i++) {
      for (int j = 1; j <= faceValue; j++) {
        fill(0);
        ellipse(myX+50,myY+50,15,15);
      }
      System.out.println();
    }
  }
}
