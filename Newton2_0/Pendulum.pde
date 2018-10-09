class Pendulum {

  float len;
  
  Barra bar1;
  Masa mas1;
  Barra bar2;
  
  Pendulum(float x, float y, float z) {
  
    bar1 = new Barra(x, y-70, 100, 50);
    mas1 = new Masa (z, y, 49.7);
      len = 300;
      
    DistanceJointDef djd = new DistanceJointDef();
      djd.bodyA = bar1.body;
      djd.bodyB = mas1.body;
      djd.length = box2d.scalarPixelsToWorld(len);
      
      djd.frequencyHz = 0;
      djd.dampingRatio = 0;
      
    DistanceJoint dj = (DistanceJoint) box2d.world.createJoint(djd);
  
  }
  
  void display(){
  
        Vec2 pos1 = box2d.getBodyPixelCoord(mas1.body);
    Vec2 pos2 = box2d.getBodyPixelCoord(bar1.body);
    stroke(160);
    line(pos1.x,pos1.y,pos2.x,pos2.y);
    mas1.display();
    bar1.display();

  
  }
  
}
