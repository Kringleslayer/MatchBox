Person p1;
Person p2;
int currentZodiacEditor = 0;
String p1ZodiacSelection = "";
String p2ZodiacSelection = "";
String mainErrorMsg = "";
String zodiacErrorMsg = "";

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

  println("--------------------------------------------------");
  println("Analyzing compatibility between " + p1.name + " and " + p2.name + "...");
  println(p1.name + "'s Score: " + p1.points);
  println(p2.name + "'s Score: " + p2.points);

  int diff = abs(p1.points - p2.points);
  
  // Bonus for matching zodiacs
  if (p1.zodiac.equals(p2.zodiac) && !p1.zodiac.equals("")) {
    println("Bonus! Matching zodiac signs (" + p1.zodiac + ") brings you closer together.");
    diff = max(0, diff - 5); // Reduce difference by 5 points
  }
  
  println("Score Difference: " + diff);

  if (diff <= 5) {
    println("Verdict: You are absolutely adorablicious! A perfect match!");
  }
  else if (diff <= 10) {
    println("Verdict: You are kawaii but not quite adorablicious. Good potential.");
  }
  else if (diff <= 30) {
    println("Verdict: You are within reach. This might take some work.");
  }
  else if (diff <= 50) {
    println("Verdict: Just give up. It's not looking good.");
  }
  else {
    println("Verdict: Why are you even trying? Total mismatch.");
  }
  println("--------------------------------------------------");
}
