import 'dart:io';

void main() {
  print('Enter a number:'); // Ask the user for a number
  int number = int.parse(
      stdin.readLineSync()!); // Read the input and convert it to an integer
  if (number > 10) {
    // If the number is greater than 10
    print('Your number is greater than 10'); // Print this message
  } else if (number < 10) {
    // If the number is less than 10
    print('Your number is less than 10'); // Print this message
  } else {
    // If the number is equal to 10
    print('Your number is equal to 10'); // Print this message
  }
}
