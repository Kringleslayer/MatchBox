class Person {
  String name;
  int age;
  String[] interests;
  String zodiac;
  int points;
  int Height; // in cm
  int weight; // in kg
  // int points; // Removed duplicate
  boolean adult;

  Person(String name, int age, String interests, String zodiac, int Height, int weight) {
    this.name = name;
    this.age = age;
    this.interests = splitTokens(interests.toLowerCase(), ", ");
    this.zodiac = zodiac.toLowerCase().trim();
    this.Height = Height;
    this.weight = weight;
    this.points = 0;
  }

 void calculatePoints() {
   points = 0;
   
   // Name points
   if(name.length() >= 6) {
     points += 5;
   }
   else {
     points += 2;
   }
   
   // Age points
   if(age > 18) {
     adult = true;
     points += 10;
   } else {
     points += 5;
   }
   
   // Height points
   if (Height > 180) points += 8;
   else if (Height > 160) points += 4;
   else points += 2;
   
   // Weight points
   if (weight > 70) points += 6;
   else if (weight > 50) points += 3;
   else points += 1;
   
   // Interest points
   points += interests.length * 3;
   
   // Zodiac points
   if (zodiac.equals("aries") || zodiac.equals("leo") || zodiac.equals("sagittarius")) {
     points += 8; // Fire signs
   } else if (zodiac.equals("cancer") || zodiac.equals("scorpio") || zodiac.equals("pisces")) {
     points += 6; // Water signs
   } else if (zodiac.equals("gemini") || zodiac.equals("libra") || zodiac.equals("aquarius")) {
     points += 4; // Air signs
   } else if (zodiac.equals("taurus") || zodiac.equals("virgo") || zodiac.equals("capricorn")) {
     points += 2; // Earth signs
   }
 }
}

     
     
     

     
     
     
   
