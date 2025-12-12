import g4p_controls.*;
String helpText = "Welcome to MatchBox!\n\n1. Click Start to begin.\n2. Enter details for two people.\n3. Select their Zodiac signs.\n4. Click Confirm to see their compatibility score!";

void setup() {
  size(500, 400);
  createGUI();
}

void draw() {
  background(126, 193, 241);
  
  if (showResults) {
    drawPopup("Compatibility Results", resultText);
  }
  
  if (showHelp) {
    drawPopup("Help", helpText);
  }
}

void drawPopup(String title, String content) {
  //shadow
  fill(0, 50);
  noStroke();
  rect(55, 55, 400, 300, 12);
  
  // Main background
  fill(250, 250, 255);
  stroke(70, 130, 180);
  strokeWeight(2);
  rect(50, 50, 400, 300, 12);
  
  // Header bar
  fill(70, 130, 180);
  noStroke();
  // Draw a rect for the header rounded corners
  rect(51, 51, 399, 40, 10);
  
  // Title text
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(18);
  text(title, width/2, 70);
  
  // Body text
  fill(50);
  textAlign(CENTER, CENTER);
  textSize(14);
  text(content, 70, 100, 360, 220);
  
  // Footer instruction
  textSize(12);
  fill(120);
  text("(Click anywhere to close)", width/2, 335);
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
