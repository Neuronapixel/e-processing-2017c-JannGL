import geomerative.*;

RShape shp1;
RShape shp2;
RShape shp3;
RShape cursorShape;

void setup()
{
  size(400, 400);
  smooth();

  RG.init(this);

  shp1 = RShape.createRing(0, 0, 220, 50);
  shp2 = RShape.createStar(10, 0, 100.0, 50.0, 20);
}

void draw()
{
  background(15);    
  translate(width/2,height/2);

  cursorShape = new RShape(shp2);
  cursorShape.translate(mouseX - width/2, mouseY - height/2);
  

  shp3 = RG.diff( shp1, cursorShape );
  
  strokeWeight( 3 );

  if(mousePressed){
    fill( 200 , 0 , 0 , 30 );
    stroke( 20 , 10 , 0 );
    RG.shape(cursorShape);

    fill( 0 , 120 , 0 , 10 );
    stroke( 0 , 220 , 0 );
    RG.shape(shp1);
  }
  else{
    fill( 500 );
    stroke( 110 );
    RG.shape(shp3);
  }
}