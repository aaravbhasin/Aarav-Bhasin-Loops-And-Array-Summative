int BallCount=30;
int scene = 1;
float[] Xs=new float[BallCount];
float[] Ys = new float[BallCount];
float X = 0;
float Y = 200;
PImage img;
void setup()
{
  img = loadImage("Win.jpg");
  img.resize(100, 100);
  noCursor();
  size (800, 800, P2D);
  Ys[0]=100;
  Ys[1]=100;
  Ys[2]=100;
  Ys[3]=100;
  Ys[4]=100;
  for (int i=0; i<BallCount; i++)
  {
    Ys[i]=random(10, 750);

    Ys[0]=-50;
    Xs[i]=random(0, 800);
  }
} 


void draw()
{
  background(0);
  if (scene == 2) {
    textSize(96);
    text("AHHHHHHHHHHHHHHHHHHHHHHH", 10, 30);
  }
  ellipse(mouseX, mouseY, 30, 30);
  for (int i=0; i<BallCount; i++)
  {
    ellipse(Xs[i], Ys[i], 20, 20);
    Ys[i]=Ys[i]-0;
    Xs[i]=Xs[i]+10;
    if (Xs[i]>width)
    {
      Xs[i]=0;
    }
    if (dist(mouseX, mouseY, Xs[i], Ys[i])<20)
    {
      background(255, 0, 0);
      mouseX-=400;
      mouseY-=400;
    }
    if (Ys[i]>height+20)
    {
      Ys[i]=-50;
    }
    if (dist(mouseX, mouseY, Xs[5], Ys[5])<20)
    {
      background(0, 255, 0);
    }
  }
  rect(0, 200, 100, 400);
  if (mouseX>X)
  {
    if (mouseX<X+100)
    {
      if (mouseY>Y)
      {
        if (mouseY<Y+400)
        {
        scene+=1;
        }
      }
    }
  }
  if(scene==2)
  {
   Win(); 
  }
}
void Win()
{
  background(0,0,0);
  image(img,400,400);
 
}
  
