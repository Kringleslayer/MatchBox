class Person {
  String name;
  int age;
  String[] interests;
  String zodiac;
  int height; // in cm
  int weight; // in kg

  Person(String name, int age, String interests, String zodiac, int height, int weight) {
    this.name = name;
    this.age = age;
    // Split interests by comma and trim whitespace
    this.interests = split(interests.toLowerCase(), ", ");
    this.zodiac = zodiac.toLowerCase().trim();
    this.height = height;
    this.weight = weight;
  }
}
