/***********  SOUND ***************
 * Some computers are unable to play sounds. 
 * If you cannot play sound on this computer, set canPlaySounds to false.
 * If you are not sure, ask your teacher 
 * *****************/
boolean canPlaySound = false;

Lightning lightning = new Lightning();
Rain rainfall = new Rain();
Spotlight spotlight = new Spotlight();

// When you get to step 7 you can add new Pumpkins and ghosts below!
Pumpkin pumpkin1;
Pumpkin pumpkin2;
Pumpkin pumpkin3;
Ghost ghost1;
Ghost ghost2;
Ghost ghost3;
Spotlight light;

// ---------------------------------------------------------
// 1. Make a PImage variable for the scary house background
// ---------------------------------------------------------
PImage scaryHouse = new PImage();

void setup() {
  // 2. Set the size of your sketch to at least 600, 400
  size(600,400);
  // 3. Pick a scary house and initialize it using loadImage,
  //    example: loadImage("scaryHouse1.jpg");
  scaryHouse = loadImage("scaryHouse2.jpg");
  // 4. Resize your scary house to the window size using
  //    scaryHouse.resize(width, height);
  scaryHouse.resize(width, height);
  
  // Pumpkin( x, pumpkinColor )
  pumpkin1 = new Pumpkin(300, #E26238);
  pumpkin2 = new Pumpkin(150, #E26238);
  pumpkin3 = new Pumpkin(450, #E26238);
  
  
  // Ghost( y, speed, flyingDirection )
  ghost1 = new Ghost(50, 5, "right", 255);
  ghost2 = new Ghost(70, 2, "left", 40);
  ghost3 = new Ghost(300, 8, "up", 100);


}

void draw() {
  // 5. Call background() with your scary house as an input parameter
  background(scaryHouse);
  // 6. Call the drawFloor method
  drawFloor();
  // 7. Call pumpkin1.draw() to draw a pumpkin.
  //    Can you make the pumpkin bounce?
  //    Make at least 2 more new pumpkins. To do this, create new pumpkin 
  //    variables above the setup() method and then initialize them
  //    in setup(). Call their draw() methods here and they should appear!
pumpkin1.draw(true);
pumpkin2.draw(true);
pumpkin3.draw(true);

  // 8. Call ghost1.draw() to draw a ghost.
  //    Make at least 2 more new ghosts to fly across the screen.
  //    To do this, create new ghost variables above the setup() method 
  //    and then initialize them in setup(). Call their draw() methods here
  //    and they should appear!
  ghost1.draw();
  ghost2.draw();
  ghost3.draw();
  
  // 9. Call rainfall.draw( <rainColor> ) to add rain
  rainfall.draw(#346890);
  
  // 10. Call lightning.draw() to draw some lightning;
  //     Can you make lightning crash when you press a mouse button?
  lightning.draw(true);
  
  // 11. Display "Happy Halloween" somewhere on your display.
   if(!mousePressed){
   textSize(70);
  color(#B358FF);
  text("Happy Halloween", 10, 300);
   }
  // ---------------------------------------------------------
  // Try out the other scary house backgrounds and customize
  // your scary house!
  // ---------------------------------------------------------
  
  if(mousePressed){
    spotlight.draw();
    fill(#000000);
  text("Happy Halloween", 10, 300);
  }
  
  
  // There is a hidden spotlight feature in this recipe.
  // See if you can figure out how to use it....
}

void drawFloor(){
  int floorHeight = 30;
  
  push();
  
  fill( 10, 10, 30 );
  rect(0, height - floorHeight, width, floorHeight);
  
  pop();
} //<>//
