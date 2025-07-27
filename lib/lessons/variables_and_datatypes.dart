// ========================================
// LESSON: Variables and Data Types in Dart
// ========================================

// Dart is a strongly-typed language, which means every variable has a type
// and that type cannot change once declared.

void main() {
  print("=== VARIABLES AND DATA TYPES IN DART ===\n");

  // ========================================
  // 1. VARIABLE DECLARATION
  // ========================================

  print("1. VARIABLE DECLARATION:");
  print("------------------------");

  // Three ways to declare variables:

  // 1.1 Using 'var' - Dart infers the type
  var name = "John Doe";
  var age = 25;
  var height = 1.75;
  var isStudent = true;

  print("Using 'var':");
  print("name = $name");
  print("age = $age");
  print("height = $height");
  print("isStudent = $isStudent\n");

  // 1.2 Using explicit type declaration
  String fullName = "Jane Smith";
  int yearsOld = 30;
  double weight = 65.5;
  bool isWorking = false;

  print("Using explicit types:");
  print("fullName = $fullName");
  print("yearsOld = $yearsOld");
  print("weight = $weight");
  print("isWorking = $isWorking\n");

  // 1.3 Using 'final' - value cannot be changed after assignment
  final String city = "New York";
  final int birthYear = 1995;

  print("Using 'final' (immutable):");
  print("city = $city");
  print("birthYear = $birthYear");
  // city = "Boston"; // This would cause an error!
  print("Note: final variables cannot be reassigned\n");

  // 1.4 Using 'const' - compile-time constant
  const double PI = 3.14159;
  const String appName = "My Flutter App";

  print("Using 'const' (compile-time constant):");
  print("PI = $PI");
  print("APP_NAME = $appName\n");

  // ========================================
  // 2. BASIC DATA TYPES
  // ========================================

  print("2. BASIC DATA TYPES:");
  print("-------------------");

  // 2.1 Numbers
  print("NUMBERS:");

  // int - whole numbers
  int temperature = -5;
  int population = 8000000;
  int score = 100;

  print("int examples:");
  print("temperature = $temperature");
  print("population = $population");
  print("score = $score");

  // double - decimal numbers
  double price = 19.99;
  double temperatureCelsius = 23.5;
  double pi = 3.14159;

  print("\ndouble examples:");
  print("price = \$$price");
  print("temperatureCelsius = $temperatureCelsius°C");
  print("pi = $pi");

  // num - can hold both int and double
  num flexibleNumber = 42;
  print("\nnum examples:");
  print("flexibleNumber = $flexibleNumber");
  flexibleNumber = 42.5; // Can be reassigned to double
  print("flexibleNumber = $flexibleNumber\n");

  // 2.2 Strings
  print("STRINGS:");

  String firstName = "Alice";
  String lastName = "Johnson";
  String message = "Hello, World!";

  print("firstName = $firstName");
  print("lastName = $lastName");
  print("message = $message");

  // String concatenation
  String fullName2 = "$firstName $lastName";
  print("fullName2 = $fullName2");

  // String interpolation (preferred method)
  String greeting = "Hello, $firstName!";
  print("greeting = $greeting");

  // Multi-line strings
  String multiLine = """
  This is a multi-line
  string in Dart.
  It can span multiple lines.
  """;
  print("multiLine = $multiLine");

  // 2.3 Booleans
  print("\nBOOLEANS:");

  bool isActive = true;
  bool isLoggedIn = false;
  bool hasPermission = true;

  print("isActive = $isActive");
  print("isLoggedIn = $isLoggedIn");
  print("hasPermission = $hasPermission\n");

  // ========================================
  // 3. COLLECTION DATA TYPES
  // ========================================

  print("3. COLLECTION DATA TYPES:");
  print("-------------------------");

  // 3.1 Lists (Arrays)
  print("LISTS:");

  List<String> fruits = ["Apple", "Banana", "Orange"];
  List<int> numbers = [1, 2, 3, 4, 5];
  List<dynamic> mixed = ["Hello", 42, true, 3.14];

  print("fruits = $fruits");
  print("numbers = $numbers");
  print("mixed = $mixed");

  // Accessing list elements
  print("First fruit: ${fruits[0]}");
  print("Second number: ${numbers[1]}");
  print("List length: ${fruits.length}");

  // Adding elements
  fruits.add("Grape");
  print("After adding grape: $fruits");

  // Removing elements
  fruits.remove("Apple");
  print("After removing apple: $fruits");

  // Sorting
  numbers.sort();
  print("Sorted numbers: $numbers");

  // Slicing
  List<String> slicedFruits = fruits.sublist(1, 3);
  print("Sliced fruits: $slicedFruits");

  // 3.2 Maps (Dictionaries/Objects)
  print("\nMAPS:");

  Map<String, String> person = {
    "name": "Bob",
    "email": "bob@example.com",
    "city": "Chicago",
    "phone": "555-1234",
  };

  Map<String, dynamic> user = {
    "id": 1,
    "name": "Alice",
    "age": 28,
    "isActive": true,
  };

  print("person = $person");
  print("user = $user");

  // Accessing map values
  print("Person's name: ${person['name']}");
  print("User's age: ${user['age']}");

  // Adding/updating map entries
  person["phone"] = "555-1234";
  print("After adding phone: $person");

  // Removing map entries
  person.remove("phone");
  print("After removing phone: $person");

  // 3.3 Sets (unique collections)
  print("\nSETS:");

  Set<String> uniqueColors = {
    "Red",
    "Green",
    "Blue",
    "Red",
  }; // Red will only appear once
  Set<int> uniqueNumbers = {1, 2, 3, 3, 4, 5}; // 3 will only appear once

  print("uniqueColors = $uniqueColors");
  print("uniqueNumbers = $uniqueNumbers");

  // Adding to sets
  uniqueColors.add("Yellow");
  print("After adding yellow: $uniqueColors\n");

  // ========================================
  // 4. TYPE INFERENCE AND TYPE CHECKING
  // ========================================

  print("4. TYPE INFERENCE AND TYPE CHECKING:");
  print("------------------------------------");

  // Dart can infer types
  var inferredString = "This is a string"; // Dart knows it's a String
  var inferredInt = 42; // Dart knows it's an int
  var inferredList = [1, 2, 3]; // Dart knows it's List<int>

  print("inferredString = $inferredString (${inferredString.runtimeType})");
  print("inferredInt = $inferredInt (${inferredInt.runtimeType})");
  print("inferredList = $inferredList (${inferredList.runtimeType})");

  // Type checking
  print("\nType checking:");
  print("Is inferredString a String? ${inferredString is String}");
  print("Is inferredInt an int? ${inferredInt is int}");
  print("Is inferredList a List? ${inferredList is List}");
  print("Is inferredList a String? ${inferredList is String}");

  // Type casting
  print("\nType casting:");
  num someNumber = 42;
  int asInt = someNumber.toInt();
  double asDouble = someNumber.toDouble();

  print("someNumber = $someNumber (${someNumber.runtimeType})");
  print("asInt = $asInt (${asInt.runtimeType})");
  print("asDouble = $asDouble (${asDouble.runtimeType})");

  // ========================================
  // 5. PRACTICAL EXAMPLES FOR FLUTTER
  // ========================================

  print("\n5. PRACTICAL EXAMPLES FOR FLUTTER:");
  print("----------------------------------");

  // User profile data
  Map<String, dynamic> userProfile = {
    "id": 1,
    "name": "John Doe",
    "email": "john@example.com",
    "age": 25,
    "isPremium": true,
    "hobbies": ["Reading", "Gaming", "Cooking"],
    "address": {
      "street": "123 Main St",
      "city": "New York",
      "zipCode": "10001",
    },
  };

  print("User Profile:");
  print("Name: ${userProfile['name']}");
  print("Age: ${userProfile['age']}");
  print("Premium: ${userProfile['isPremium']}");
  print("Hobbies: ${userProfile['hobbies']}");
  print("City: ${userProfile['address']['city']}");

  // App settings
  Map<String, dynamic> appSettings = {
    "theme": "dark",
    "language": "en",
    "notifications": true,
    "fontSize": 16.0,
    "colors": ["#FF0000", "#00FF00", "#0000FF"],
  };

  print("\nApp Settings:");
  print("Theme: ${appSettings['theme']}");
  print("Language: ${appSettings['language']}");
  print("Notifications: ${appSettings['notifications']}");
  print("Font Size: ${appSettings['fontSize']}");
  print("Colors: ${appSettings['colors']}");

  // ========================================
  // 6. COMMON PITFALLS AND BEST PRACTICES
  // ========================================

  print("\n6. COMMON PITFALLS AND BEST PRACTICES:");
  print("--------------------------------------");

  // Pitfall 1: Null safety (Dart 2.12+)
  print("NULL SAFETY:");
  String? nullableString; // Can be null
  String nonNullableString = "Hello"; // Cannot be null

  print("nullableString = $nullableString");
  print("nonNullableString = $nonNullableString");

  // Safe navigation
  print("Length of nullable: ${nullableString?.length}");
  print("Length of non-nullable: ${nonNullableString.length}");

  // Pitfall 2: Type conversion
  print("\nTYPE CONVERSION:");
  String numberString = "42";
  int convertedNumber = int.parse(numberString);
  double convertedDouble = double.parse(numberString);

  print("numberString = $numberString (${numberString.runtimeType})");
  print("convertedNumber = $convertedNumber (${convertedNumber.runtimeType})");
  print("convertedDouble = $convertedDouble (${convertedDouble.runtimeType})");

  // Pitfall 3: List operations
  print("\nLIST OPERATIONS:");
  List<int> scores = [85, 92, 78, 96, 88];
  print("Original scores: $scores");

  scores.sort();
  print("Sorted scores: $scores");

  int highestScore = scores.last;
  int lowestScore = scores.first;
  double averageScore = scores.reduce((a, b) => a + b) / scores.length;

  print("Highest score: $highestScore");
  print("Lowest score: $lowestScore");
  print("Average score: ${averageScore.toStringAsFixed(2)}");

  // ========================================
  // 7. EXERCISES FOR STUDENTS
  // ========================================

  print("\n7. EXERCISES FOR STUDENTS:");
  print("--------------------------");

  print("Exercise 1: Create variables for a student");
  // TODO: Students should create variables for:
  // - Student name (String)
  // - Student ID (int)
  // - GPA (double)
  // - Is enrolled (bool)
  // - Courses (List<String>)

  print("Exercise 2: Create a shopping cart");
  // TODO: Students should create:
  // - List of items (List<String>)
  // - Map of item prices (Map<String, double>)
  // - Calculate total price

  print("Exercise 3: Temperature converter");
  // TODO: Students should create:
  // - Celsius temperature (double)
  // - Convert to Fahrenheit
  // - Convert to Kelvin

  print("\n=== END OF LESSON ===");
}

// ========================================
// STUDENT EXERCISES
// ========================================

// Exercise 1: Student Information
void studentExercise() {
  // TODO: Create variables for a student
  // - name (String)
  // - studentId (int)
  // - gpa (double)
  // - isEnrolled (bool)
  // - courses (List<String>)

  // Your code here:
}

// Exercise 2: Shopping Cart
void shoppingCartExercise() {
  // TODO: Create a shopping cart with:
  // - List of items
  // - Map of prices
  // - Calculate total

  // Your code here:
}

// Exercise 3: Temperature Converter
void temperatureConverter() {
  // TODO: Convert temperatures between Celsius, Fahrenheit, and Kelvin

  // Your code here:
}
