int num=10;

Particle[] prt;

void setup(){
  size(500,500);
  background(255);
  smooth();
  
  prt = new Particle[num];
  for(int i=0;i<10;i++){
    prt[i] = new Particle(width/2,height/2,random(5),random(5),random(10));
  }
}

void draw(){
  for(int i=0;i<num;i++){
    prt[i].update();
  }  
}


class Particle{
  float px,py;
  float vx,vy;
  float d;
  float speed;
  
  Particle(float x,float y,float vecX,float vecY,float sp){
    px = x;
    py = y;
    vx = vecX;
    vy = vecY;
    speed = sp;
    
    d = random(20,40);
  }
  
  void update(){
    px += vx;
    py += vy;
    
    if(px+d > width + d){
      vx *= -1;
    }
    if(px < 0 - d){
      vx *= -1;
    }
    
    if(py > height + d){
      vy *= -1;
    }
    if(py < 0 - d){
      vy *= -1;
    }
    
    ellipse(px,py,d,d);
    
  }
  
  
}