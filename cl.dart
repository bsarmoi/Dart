class Person {
  //properties
  String name;
  String phone;
  bool isMarried;
  int age;
  String hobby;
  String nationality;
  String phoneBrand;

  Person(this.name, this.phone, this.isMarried, this.age, this.hobby,
      this.nationality, this.phoneBrand);

  void displayInfo() {
    print('Name: $name');
    print('Phone: $phone');
    print('Marital Status: ${isMarried ? 'Married' : 'Single'}');
    print('Age: $age');
    print('Hobby: $hobby');
    print('Nationality: $nationality');
    print('Phone Brand: $phoneBrand');
  }
}

void main() {
  var person = Person('Josphat Kituku', '+2541666376243', true, 30, 'Tennis',
      'Kenyan', 'Galaxy Note 20');

  person.displayInfo();
}
