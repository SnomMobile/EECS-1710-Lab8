PImage img;
Pikmin [] globalArr;
Boolean start = false;
int counter;

void setup()
{
  background(255);
  size (400,400,P2D);
  frameRate(15);
}
void draw()
{
  if(start==true)
  {
    movement();
  }
}
void keyPressed()
{
  if(key ==' ')
  {
    background(255);
    start = false;
  }
  if(key == '1')
  {
    background(255);
    img = loadImage("Rainbow.png");
    count();
    start = true;
  }
  if(key == '2')
  {
    background(255);
    img = loadImage("PacMan.png");
    count();
    start = true;
  }
  if(key == '3')
  {
    background(255);
    img = loadImage("EggMan.png");
    count();
    start = true;
  }
}
void spawn(int colored)
{
  globalArr = new Pikmin [colored];
  int count = 0;
  loadPixels();
  img.loadPixels();
  for(int x = 0;x<width;x++)
  {
    for(int y=0;y<height;y++)
    {
      int loc = x+y*width;
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      if(r == 255 && g == 255 && b == 255)
      {
      }
      else if(r == 0 && g == 0 && b == 0)
      {
        color pik = color(0);
        globalArr[count] = new Pikmin(pik,x,y);
        count++;
      }
      else
      {
        color pik = color(r,g,b);
        globalArr[count] = new Pikmin(pik,x,y);
        count++;
      }
    }
  }
  counter = count;
}
void count()
{
  int cpixels = 0;
  for(int x = 0;x<width;x++)
  {
    for(int y=0;y<height;y++)
    {
      int loc = x+y*width;
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      if(r == 255 && g == 255 && b == 255)
      {
      }
      else
      {
        cpixels++;
      }
    }
  }
  spawn(cpixels);
}
void movement()
{
  for(int i = 0;i<counter;i++)
  {
    globalArr[i].move();
  }
}
