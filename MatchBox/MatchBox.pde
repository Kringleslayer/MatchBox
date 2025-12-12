import g4p_controls.*;
String helpText = "Welcome to MatchBox!\n\n1. Click Start to begin.\n2. Enter details for two people.\n3. Select their Zodiac signs.\n4. Click Confirm to see their compatibility score!";

//Person p1 = new Person();
//Person p2 = new Person();

//String identifyProblems() {
  //if 
//}

void setup() {
  size(500, 400);
  createGUI();
}

void draw() {
  background(126, 193, 241);
  
  if (showResults) {
    // Draw background
    fill(255);
    rect(50, 50, 400, 300, 10);
    
    // Draw text
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(14);
    text(resultText, 70, 70, 360, 260);
    
    // make close line look subtler
    textSize(12);
    fill(100);
    text("(Click anywhere to close)", width/2, 330);
  }
  
  if (showHelp) {
    // Draw background
    fill(255);
    rect(50, 50, 400, 300, 10);
    
    // Draw text
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(14);
    text(helpText, 70, 70, 360, 260);
    
    // make close line look subtler
    textSize(12);
    fill(100);
    text("(Click anywhere to close)", width/2, 330);
  }
}

void mousePressed() {
  if (showResults) {
    showResults = false;
    // Restore main menu elements
    Start_Button.setVisible(true);
    Help_Button.setVisible(true);
    MatchBox_Title.setVisible(true);
  }
  
  if (showHelp) {
    showHelp = false;
    // Restore main menu elements
    Start_Button.setVisible(true);
    Help_Button.setVisible(true);
    MatchBox_Title.setVisible(true);
  }
}
