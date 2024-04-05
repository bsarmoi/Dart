// Function to add two numbers
int addNumbers(int num1, int num2) {
  return num1 + num2;
}

void main() {
  // Print numbers 1 to 10 using for loop
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // Check string value using switch statement
  String input = "apple";
  switch (input) {
    case "apple":
      print("It's a fruit!");
      break;
    case "orange":
      print("It's another citrus fruit!");
      break;
    default:
      print("I don't recognize that fruit.");
  }

  // Print numbers 20 to 10 (descending) using while loop
  int j = 20;
  while (j >= 10) {
    print(j);
    j--;
  }

  // Check if a number is even or odd using if-else
  int number = 15;
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }

  // Find the largest number in a list
  List<int> numbers = [5, 12, 3, 18];
  int largest = numbers[0];
  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }
  print("The largest number is: $largest");

  // Try-catch block to handle exception
  try {
    int result = int.parse("hello"); // This will throw an exception
    print(result);
  } catch (error) {
    print("Error: Invalid input. Please enter a number.");
  }
}
