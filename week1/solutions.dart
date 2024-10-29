void main() {
  // Defining variables

  // An integer variable
  int age = 25;

  // A double variable
  double height = 5.9;

  // String variable
  String name = "Nelly";

  // Boolean variable
  bool isStudent = true;

  // List variable with mixed data types
  List<dynamic> list1 = [85, 90, 78, 92, 88, "numbers"];

  print("Name: $name");
  print("Age: $age");
  print("Height: $height");
  print("Is Student: $isStudent");
  print("Scores: $list1");

  // Type conversions

  // Converting a String to int
  String intString = "45";
  int convertedInt = stringToInt(intString);
  print("String to int: $convertedInt");

  // Converting a String to double
  String doubleString = "35.5";
  double convertedDouble = stringToDouble(doubleString);
  print("String to double: $convertedDouble");

  // Converting an int to String
  int integer = 50;
  String convertedString = intToString(integer);
  print("Int to String: $convertedString");

  // Converting an int to double
  double convertedToDouble = intToDouble(integer);
  print("Int to double: $convertedToDouble");

  // Test the convertAndDisplay function
  String numberString = "42.5";
  convertAndDisplay(numberString);
}

// Function to convert String to int
int stringToInt(String str) {
  return int.parse(str);
}

// Function to convert String to double
double stringToDouble(String str) {
  return double.parse(str);
}

// Function to convert int to String
String intToString(int num) {
  return num.toString();
}

// Function to convert int to double
double intToDouble(int num) {
  return num.toDouble();
}

// Function to convert String to int and double, then display the results
void convertAndDisplay(String str) {
  try {
    int convertedInt = int.parse(str);
    print("String to int: $convertedInt");
  } catch (e) {
    print("Could not convert '$str' to int. Error: $e");
  }

  try {
    double convertedDouble = double.parse(str);
    print("String to double: $convertedDouble");
  } catch (e) {
    print("Could not convert '$str' to double. Error: $e");
  }
}

// Control flow
void controFow() {
  // If-Else Statements

  // Checking if a number is positive, negative, or zero
  int number = -5; 
  if (number > 0) {
    print("The number $number is positive.");
  } else if (number < 0) {
    print("The number $number is negative.");
  } else {
    print("The number is zero.");
  }

  // Check if a person is eligible to vote based on age
  int age = 20;
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }

  // Switch Case: Print the day of the week based on an integer input
  int day = 3; 
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day number. Please enter a number between 1 and 7.");
  }

  // Loops

  // For loop: Print numbers from 1 to 10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // While loop: Print numbers from 10 to 1
  print("Numbers from 10 to 1:");
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  // Do-While loop: Print numbers from 1 to 5
  print("Numbers from 1 to 5:");
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);
}

// Combining Data Types and Control Flow
void CombiningTypes() {
  List<int> numbers = [3, 7, 12, 25, 42, 105, 8, 99, 150, 5];

  for (int number in numbers) {
    print("Number: $number");

    if (number % 2 == 0) {
      print("$number is even.");
    } else {
      print("$number is odd.");
    }

    String category;
    if (number >= 1 && number <= 10) {
      category = "small";
    } else if (number >= 11 && number <= 100) {
      category = "medium";
    } else {
      category = "large";
    }

    print("$number is categorized as: $category");
    print(""); 
  }
}
