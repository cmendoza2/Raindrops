Raindrops[] drop = new Raindrops[1000];
Cloud c1;
Catcher catch1;
int raain;
int oldTime;
int score;

void setup() {
  size(600, 600);
  raain = 0;
  score = 0;
  oldTime = 3000;
  c1 = new Cloud();
  catch1 = new Catcher();
  for (int i =0; i < drop.length; i++) {
    drop[i] = new Raindrops();
  }
}

void draw() {
  background(0);
  text(score,width-50,20);
  c1.display();
  c1.move();
  catch1.display();
  drop[raain] = new Raindrops();
  for (int i =0; i < raain; i++) {
    drop[i].display();
    drop[i].move();
    catch1.check(drop[i]);
  }
  if (millis()-oldTime >=3000) {
    oldTime = millis();
    raain++;
  }
}

