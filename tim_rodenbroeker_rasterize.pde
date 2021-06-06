// Code based on my rasterization-tutorial 
// https://timrodenbroeker.de/rasterize
// Enjoy! :-)
// Tim Rodenbröker 
// 2019 

PImage img; 
float tiles;

void setup() {
  size(1000, 1000,P2D);
  img = loadImage("data/sus.jpg");
  img.resize(1000, 1000);
   tiles=1;
   fill(0);
  noStroke();
}

void draw() {
  background(255);
  
  float tiles = mouseX/5;
  //if(tiles<200)
  //  tiles++;
  
  
  float tileSize = width/tiles;
  translate(tileSize/2,tileSize/2);
  img.loadPixels();
  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) {
        color c=img.pixels[int(y*tileSize)*width+int(x*tileSize)];
      //color c = img.get(int(x*tileSize),int(y*tileSize));
      float size = map(brightness(c),0,255,tileSize,0);    
     // rectMode(CENTER);
      ellipse(x*tileSize, y*tileSize, size, size);
    }
  }
  //img.updatePixels();
 // img.updatePixels();
  //if(tiles<500)
  //tiles++;
  
  System.out.println(frameRate);
  
  
  
  
}
