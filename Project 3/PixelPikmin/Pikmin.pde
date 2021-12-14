class Pikmin
{
  color rgb;
  int posx; 
  int posy;
  int speed = int(random(10)+1);
  
  Pikmin(color colour,int startx, int starty)
  {
    rgb = colour;
    posx = startx;
    posy = starty;
    stroke(rgb);
    point(posx,posy);
  }
  void move()
  {
    int x = int(random(2));
    int y = int(random(2));
    if(x == 0 && y == 0)
    {
      stroke(255,255,255);
      point(posx,posy);
      posx -= speed;
      posy -= speed;
      stroke(rgb);
      point(posx,posy);
    }
    if(x == 1 && y == 0)
    {
      stroke(255,255,255);
      point(posx,posy);
      posx += speed;
      posy -= speed;
      stroke(rgb);
      point(posx,posy);
    }
    if(x == 0 && y == 1)
    {
      stroke(255,255,255);
      point(posx,posy);
      posx -= speed;
      posy += speed;
      stroke(rgb);
      point(posx,posy);
    }
    if(x == 1 && y == 1)
    {
      stroke(255,255,255);
      point(posx,posy);
      posx += speed;
      posy += speed;
      stroke(rgb);
      point(posx,posy);
    }
  }
}
