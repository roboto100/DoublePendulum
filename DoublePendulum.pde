void setup() {
  // Setup the screen
  size(600, 600);
  background(0);
  frameRate(30);
}

// Declare the two pendulums we'll be using
pendulum pendulum1 = new pendulum(2, 3, 1, 1, 1, 1, 0.0001);
pendulum pendulum2 = new pendulum(-2, -3, 1, 1, 1, 1, 0.0001);

int t = 0;

void draw() {
  // Clear the screen, step 1/30'th of a second and redraw the pendulums
  background(0);
  pendulum1.stepMulti();
  fill(255, 0, 0);
  pendulum1.display();
  pendulum2.stepMulti();
  fill(0, 0, 255);
  pendulum2.display();

  fill(255);
  text("time: "+str(t/30)+" seconds", 25, 25);

  // This saves the image every frame for the first 10 seconds. Useful for making GIFs
  // Warning. If you change this to t<30*10, you will have 300 images generated.
  if (t<30*0) {
    save("pendulum"+str(t)+".png");
  }
  t += 1;
}
