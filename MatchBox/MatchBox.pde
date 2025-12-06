import g4p_controls.*;

Person p1 = new Person("Bosco", 17, "gooning, gaming, business", "aries", 168, 55);
Person p2 = new Person("Weijie", 17, "coding, rizzing, gaming", "gemini", 170, 68);


void setup() {
  size(500, 400);
  identifyProblems();
  createGUI();
}

void draw() {
  //background(126, 193, 241);
}

void identifyProblems() {
  if (p1.points - p2.points <= 5 || p2.points - p1.points <= 5) {
    println("You are absolutely adorablicious! ");
  }
  else if (p1.points - p2.points <= 8 || p2.points - p1.points <= 8) {
    println("You are kawaii but not quite adorablicious. ");
  }
  else if (p1.points - p2.points <= 12 || p2.points - p1.points <= 12) {
    println("You are disappointing. ");
  }
  else if (p1.points - p2.points <= 15 || p2.points - p1.points <= 15) {
    println("Just give up. ");
  }
  else {
    println("Why are you even trying? ");
  }
}
