class Masa {

   Body body;
   float r;
   color col;
   PImage ball;
   
   Masa(float x, float y, float r_){
   
     r = r_;
   
     makeBody(x, y, r);
     body.setUserData(this);
     
     col = color (200);
     ball = loadImage("masa.png");    
   }
   
    boolean contains(float x, float y) {
      Vec2 worldPoint = box2d.coordPixelsToWorld(x, y);
      Fixture f = body.getFixtureList();
      boolean inside = f.testPoint(worldPoint);
      return inside;
   }
 
  void display(){

  Vec2 pos = box2d.getBodyPixelCoord(body);
  float a = body.getAngle();
  pushMatrix();
  translate(pos.x, pos.y);
  
  
  
  image (ball,-50,0);
  /*fill(col);
  noStroke();
  ellipse(0,0,r*2,r*2);*/
  popMatrix();

}

void makeBody(float x, float y, float r){

    BodyDef bd = new BodyDef();
    bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    
    body = box2d.world.createBody(bd);
    
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    
    fd.density = 1;
    fd.friction = 0.9;
    fd.restitution = 0.92;
    
    body.createFixture(fd);

}
  
}
