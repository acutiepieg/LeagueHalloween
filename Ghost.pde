public class Ghost {
  PImage ghostImg;
  String direction;
  int x;
  int y;
  int speed = 5;
  int tintNum;

  public Ghost(int y, int speed, String direction, int tintNum) {
    ghostImg = loadImage( "ghost.png" );
    ghostImg.resize(150, 250);
    
    this.direction = direction;
    this.speed = speed;
    this.x = -ghostImg.width;
    this.y = y;
    this.tintNum = tintNum;
  }

  void draw() {
    push();

    // Makes ghost transparent
    tint(tintNum, 125);
    
    if( direction.equalsIgnoreCase("left") ){
      // Ghost goes right to left
      
      //flip on X axis
      scale(-1,1);
      image(ghostImg, -this.x, this.y);
      
      this.x -= speed;
      
      if( this.x < -ghostImg.width ){
        this.x = width + ghostImg.width;
        
      }
    } else {
      // Ghost goes left to right
      
      image( ghostImg, this.x, this.y );
      
      this.x += speed;
      
      if ( this.x > width ) {
        this.x = -ghostImg.width;
      }
    }
    
    pop();
  }
}
