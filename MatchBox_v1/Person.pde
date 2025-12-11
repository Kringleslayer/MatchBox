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
     points += 10;
   }
   else {
     points += 2;
   }
   
   // Age points
   if(age > 18) {
     adult = true;
     points += 20;
   } else {
     points += 5;
   }
   
   // Height points
   if (Height > 180) points += 15;
   else if (Height > 160) points += 8;
   else points += 2;
   
   // Weight points
   if (weight > 70) points += 12;
   else if (weight > 50) points += 6;
   else points += 1;
   
   // Interest points
   points += interests.length * 5;
   
   // Zodiac points
   if (zodiac.equals("aries") || zodiac.equals("leo") || zodiac.equals("sagittarius")) {
     points += 20; // Fire signs
   } else if (zodiac.equals("cancer") || zodiac.equals("scorpio") || zodiac.equals("pisces")) {
     points += 15; // Water signs
   } else if (zodiac.equals("gemini") || zodiac.equals("libra") || zodiac.equals("aquarius")) {
     points += 10; // Air signs
   } else if (zodiac.equals("taurus") || zodiac.equals("virgo") || zodiac.equals("capricorn")) {
     points += 5; // Earth signs
   }
 }
}

     
     
     

     
     
     
   
