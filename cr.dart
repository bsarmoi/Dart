class Person {
  // Properties
  String name;
  String phone;
  bool isMarried;
  int age;
  String phoneModel;

  // Constructor
  Person(this.name, this.phone, this.isMarried, this.age, this.phoneModel);

  // Method to display information
  void displayInfo() {
    print('Name: $name');
    print('Phone: $phone');
    print('Marital Status: ${isMarried ? 'Married' : 'Single'}');
    print('Age: $age');
    print('Phone Model: $phoneModel');
  }
}

void main() {
  // Creating an instance of the Person class
  var person = Person('Bethuel', '+25449900320', true, 29, 'Samsung Note 20');

  // Calling the displayInfo method to print information
  person.displayInfo();
}
