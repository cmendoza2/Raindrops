class Cloud { //this declares the class//

  PVector loc; 
  PVector vel; //these declare PVectors. These describe the location of the object of this class and the velocity of the object.//
  int cloudS; //the variable of the size of the cloud is declared.//
  PImage Cloud; //this declares an image. A cloud picture will be used for the object of this class//

  Cloud() { //this is a constructor. it initializes the class//
    loc = new PVector(0, 5);  //the location of the cloud is now given specific numbers.//
    vel = new PVector(3, 0); //this will make the cloud move ONLY in the x direction. the velocity in the y direction is 0.//
    cloudS = 150; //the size of the cloud is now given a number//
    Cloud = loadImage("Cloud.png"); //the image of the cloud will now be loaded and can be used in void display()//
  }

  void display() { //this function will let the picture of the cloud appear//
    imageMode(CORNER); /*this declares the image mode from where the image will appear 
    (where it will be loaded in regards to the x and y locations that were given to the cloud)*/
    image(Cloud, loc.x, loc.y, cloudS, cloudS-70); //the cloud will be displayed. it is given an x and y location and the size of it is shown//
    textSize(20); //this declares the text size//
    fill(0); //this declares the color of the text//
    text("Level " + level, loc.x+75, loc.y+48); //this will show what level the player is on. it will appear on the cloud and move along with it//
    if (score == 10) {
      level = 2; //if the player has caught 10 raindrops, the player is now on level 2//
    }
    if (score == 20) {
      level = 3; //if the player has caught 20 raindrops, the player is now on level 3//
    }
  }

  void move() { //this function will allow the cloud to move//
    if (run) { //this allows for the pause button to work. it will stop the cloud where it is at//
      loc.add(vel); //this allows the function to actually move. the loc.x will be added by the velocity in the x direction. THIS IS KEY SO THE CLOUD WILL ACTUALLY MOVE//
      if (loc.x > width-cloudS || loc.x <0) {
        vel.mult(-1);
      } /*this is needed so that the cloud will not only move in on direction and go off the screen. this says that if the cloud reaches the end of the display screen, 
       it will go in the reverse order, and when it reaches the beginning of the screen, it will go back in the original direction it was going. 
       This will go on a continuous loop, and the Cloud will not go off the screen and keep on moving, but ONLY in the x direction.*/
    }
  }
}

