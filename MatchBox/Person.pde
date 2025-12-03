class Person {
  String name;
  int age;
  String[] interests;
  String zodiac;
  int height; // in cm
  int weight; // in kg
  int points; 

  Person(String name, int age, String interests, String zodiac, int height, int weight) {
    this.name = name;
    this.age = age;
    this.interests = splitTokens(interests.toLowerCase(), ", ");
    this.zodiac = zodiac.toLowerCase().trim();
    this.height = height;
    this.weight = weight;
  }

 void calculatePoints() {
   if(name.length() <= 6) {
     points += 1;
   }
   elif( {
     points  
     
     
   
