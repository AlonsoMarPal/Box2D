class Barra {
  Body body;
  float l;
  float h;
  PImage tab;
  
  Barra(float x, float y, float l_, float h_){
    l = l_;
    h = h_;
    tab = loadImage("bar.png");
    
    BodyDef bd = new BodyDef();
    bd.position.set(box2d.coordPixelsToWorld(new Vec2(x,y)));
    bd.type = BodyType.STATIC;
    
    body = box2d.createBody(bd);
    
    PolygonShape sd = new PolygonShape();
    float box2dL = box2d.scalarPixelsToWorld(l/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dL, box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;
    
    body.createFixture(fd);
   
  }
  
  void display (){
    Vec2 pos = box2d.getBodyPixelCoord(body);
    
    rectMode(PConstants.CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    image (tab,-50,-50);
    /*fill(255,210,190);
    noStroke();
    rect(0,0,l,h);*/
    popMatrix();
    
  }
  
}
