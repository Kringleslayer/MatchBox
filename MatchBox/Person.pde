class Person {
  String name;
  int age;
  String[] interests;
  String zodiac;
  int points;
  int Height; // in cm
  int weight; // in kg

  Person(String name, int age, String interests, String zodiac, int Height, int weight) {
    this.name = name;
    this.age = age;
    this.interests = splitTokens(interests.toLowerCase(), ", ");
    this.zodiac = zodiac.toLowerCase().trim();
    this.Height = Height;
    this.weight = weight;
  }
}
