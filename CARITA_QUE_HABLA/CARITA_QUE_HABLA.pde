import guru.ttslib.*;

TTS tts;

void setup() {
  size(100,100);
  smooth();
  tts = new TTS();
}

void draw() {
  background(500);
  fill(155,100,15);
  ellipse( 35, 30, 25, 35 );
  ellipse( 65, 30, 25, 35 );
  fill(150,20,200);
  ellipse( 40, 35, 10, 10 );
  ellipse( 70, 35, 10, 10 );
  noFill();
  arc(50,50,50,50,0,PI);
  
}

void mousePressed() {
  tts.speak("Hello, i'm janet i would like to approve programming");
}