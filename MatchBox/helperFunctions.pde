Person p1;
Person p2;
int currentZodiacEditor = 0;
String p1ZodiacSelection = "";
String p2ZodiacSelection = "";
String mainErrorMsg = "";
String zodiacErrorMsg = "";
boolean showResults = false;
boolean showHelp = false;
String resultText = "";

boolean catchErrors() {
  if (Name1.getText().trim().equals("")) {
    mainErrorMsg = "Please enter Name 1";
    return false;
  }
  if (Name2.getText().trim().equals("")) {
    mainErrorMsg = "Please enter Name 2";
    return false;
  }
  if (Intrests_Text1.getText().trim().equals("")) {
    mainErrorMsg = "Please enter Interests for Person 1";
    return false;
  }
  if (Intrests_Text2.getText().trim().equals("")) {
    mainErrorMsg = "Please enter Interests for Person 2";
    return false;
  }
  if (p1ZodiacSelection.equals("")) {
    mainErrorMsg = "Please select Zodiac for Person 1";
    return false;
  }
  if (p2ZodiacSelection.equals("")) {
    mainErrorMsg = "Please select Zodiac for Person 2";
    return false;
  }
  
  mainErrorMsg = "";
  return true;
}

int countSelectedZodiacs() {
  int count = 0;
  if (Pisces.isSelected()) count++;
  if (Aquarius.isSelected()) count++;
  if (Capricorn.isSelected()) count++;
  if (Sagittarius.isSelected()) count++;
  if (Scorpio.isSelected()) count++;
  if (Libra.isSelected()) count++;
  if (Virgo.isSelected()) count++;
  if (Leo.isSelected()) count++;
  if (Cancer.isSelected()) count++;
  if (Gemini.isSelected()) count++;
  if (Taurus.isSelected()) count++;
  if (Aries.isSelected()) count++;
  return count;
}

void getValues() {

  // Person 1
  String n1 = Name1.getText();
  int a1 = Age1.getValueI();
  int h1 = (int)Height1.getValueF();
  int w1 = (int)Weight1.getValueF();
  String i1 = Intrests_Text1.getText();
  String z1 = p1ZodiacSelection; 
  
  p1 = new Person(n1, a1, i1, z1, h1, w1);
  
  // Person 2
  String n2 = Name2.getText();
  int a2 = Age2.getValueI();
  int h2 = (int)Height2.getValueF();
  int w2 = (int)Weight2.getValueF();
  String i2 = Intrests_Text2.getText();
  String z2 = p2ZodiacSelection;
  
  p2 = new Person(n2, a2, i2, z2, h2, w2);
  
  p1.calculatePoints();
  p2.calculatePoints();
}

String getSelectedZodiac() {
  if (Pisces.isSelected()) return "pisces";
  if (Aquarius.isSelected()) return "aquarius";
  if (Capricorn.isSelected()) return "capricorn";
  if (Sagittarius.isSelected()) return "sagittarius";
  if (Scorpio.isSelected()) return "scorpio";
  if (Libra.isSelected()) return "libra";
  if (Virgo.isSelected()) return "virgo";
  if (Leo.isSelected()) return "leo";
  if (Cancer.isSelected()) return "cancer";
  if (Gemini.isSelected()) return "gemini";
  if (Taurus.isSelected()) return "taurus";
  if (Aries.isSelected()) return "aries";
  return "";
}

void clearZodiacSelection() {
  Pisces.setSelected(false);
  Aquarius.setSelected(false);
  Capricorn.setSelected(false);
  Sagittarius.setSelected(false);
  Scorpio.setSelected(false);
  Libra.setSelected(false);
  Virgo.setSelected(false);
  Leo.setSelected(false);
  Cancer.setSelected(false);
  Gemini.setSelected(false);
  Taurus.setSelected(false);
  Aries.setSelected(false);
}

void identifyProblems() {
  if (p1 == null || p2 == null) {
    println("Waiting for input... Please fill out the form and click Confirm.");
    return;
  }
  int problemDiff = 0;
  int ageDiff = abs(p1.age - p2.age);
  

  println("Age Comparison:");
  if (ageDiff <= 4) {
    println("Very close in age (" + ageDiff + " years difference).");
    println("You probably share similar life experiences and cultural norms");
    problemDiff = max(0, problemDiff - 5);
  } else if (ageDiff <= 10) {
    println("Medium age gap (" + ageDiff + " years difference).");
    println("OK difference, but you may have differences in maturity or references");
    problemDiff = max(0, problemDiff + 3);
  } else if (ageDiff <= 20) {
    println("Big age gap (" + ageDiff + " years difference).");
    println("Be prepared for a different generation, friend groups, and views.");
    problemDiff = max(0, problemDiff + 6);
  }
    else {
      println("This is rather unusual...(" + ageDiff + " years difference).");
      println("Perhaps find another person");
      problemDiff = max(0, problemDiff + 20);
    }
    

  String resultMessage = "";
  resultMessage += "Analyzing compatibility between " + p1.name + " and " + p2.name + "...\n\n";
  resultMessage += p1.name + "'s Score: " + p1.points + "\n";
  resultMessage += p2.name + "'s Score: " + p2.points + "\n";
  resultMessage += "Closer scores to each other is Better\n";
   int initialDiff = abs(p1.points - p2.points);
   int pointsDifference = max(0, initialDiff + problemDiff);
   int finalDiff = pointsDifference;
  
  // Bonus for matching zodiacs
  if (p1.zodiac.equals(p2.zodiac) && !p1.zodiac.equals("")) {
    resultMessage += "\nBonus! Matching zodiac signs (" + p1.zodiac + ") brings you closer together.\n";
    finalDiff = max(0, finalDiff - 5); // Reduce difference by 5 points; Diff cant be negative, thus the max function
  }
  resultMessage += "\nInitial Difference:" + initialDiff;
  resultMessage += "\nProblem Difference:" + problemDiff;
  resultMessage += "\nFinal Score Difference: " + finalDiff + "\n";

  if (finalDiff <= 2) {
    resultMessage += "Verdict: You are absolutely adorablicious! A perfect match!";
  }
  else if (finalDiff <= 5) {
    resultMessage += "Verdict: You are kawaii but not quite adorablicious. Good potential.";
  }
  else if (finalDiff <= 10) {
    resultMessage += "Verdict: You are within reach. This might take some work.";
  }
  else if (finalDiff <= 20) {
    resultMessage += "Verdict: Just give up. It's not looking good.";
  }
  else {
    resultMessage += "Verdict: Why are you even trying? Total Mismatch.";
  }
  
  resultText = resultMessage;
  showResults = true;
  
  // Hide main menu elements so they don't overlap results
  Start_Button.setVisible(false);
  Help_Button.setVisible(false);
  MatchBox_Title.setVisible(false);
}


  
