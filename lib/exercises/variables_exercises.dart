// ========================================
// EXERCISES: Variables and Data Types
// ========================================
// Complete these exercises to practice your understanding of variables and data types

void main() {
  print("=== VARIABLES AND DATA TYPES EXERCISES ===\n");

  // Run all exercises
  exercise1();
  exercise2();
  exercise3();
  exercise4();
  exercise5();
}

// Exercise 1: Student Information
// Create variables to store information about a student
void exercise1() {
  print("Exercise 1: Student Information");
  print("--------------------------------");

  // TODO: Create the following variables:
  // - studentName (String): The student's full name
  // - studentId (int): The student's ID number
  // - gpa (double): The student's GPA (0.0 to 4.0)
  // - isEnrolled (bool): Whether the student is currently enrolled
  // - courses (List<String>): List of courses the student is taking

  // Your code here:
  String studentName = "Sarah Johnson";
  int studentId = 12345;
  double gpa = 3.8;
  bool isEnrolled = true;
  List<String> courses = ["Math 101", "Physics 201", "English 101"];

  // Display the information
  print("Student Name: $studentName");
  print("Student ID: $studentId");
  print("GPA: $gpa");
  print("Enrolled: $isEnrolled");
  print("Courses: $courses");
  print("Number of courses: ${courses.length}");
  print("");
}

// Exercise 2: Shopping Cart
// Create a shopping cart with items and prices
void exercise2() {
  print("Exercise 2: Shopping Cart");
  print("-------------------------");

  // TODO: Create the following:
  // - items (List<String>): List of items in the cart
  // - prices (Map<String, double>): Map of item names to their prices
  // - Calculate and display the total price

  // Your code here:
  List<String> items = ["Apple", "Banana", "Milk", "Bread"];
  Map<String, double> prices = {
    "Apple": 0.50,
    "Banana": 0.30,
    "Milk": 2.99,
    "Bread": 1.49,
  };

  // Calculate total
  double total = 0.0;
  for (String item in items) {
    total += prices[item] ?? 0.0;
  }

  // Display cart contents
  print("Shopping Cart:");
  for (String item in items) {
    double price = prices[item] ?? 0.0;
    print("  $item: \$${price.toStringAsFixed(2)}");
  }
  print("Total: \$${total.toStringAsFixed(2)}");
  print("");
}

// Exercise 3: Temperature Converter
// Convert temperatures between different units
void exercise3() {
  print("Exercise 3: Temperature Converter");
  print("---------------------------------");

  // TODO: Create the following:
  // - celsius (double): Temperature in Celsius
  // - Convert to Fahrenheit: (celsius * 9/5) + 32
  // - Convert to Kelvin: celsius + 273.15
  // - Display all three temperatures

  // Your code here:
  double celsius = 25.0;
  double fahrenheit = (celsius * 9 / 5) + 32;
  double kelvin = celsius + 273.15;

  print("Temperature Conversions:");
  print("Celsius: $celsius°C");
  print("Fahrenheit: ${fahrenheit.toStringAsFixed(1)}°F");
  print("Kelvin: ${kelvin.toStringAsFixed(1)}K");
  print("");
}

// Exercise 4: User Profile
// Create a comprehensive user profile using different data types
void exercise4() {
  print("Exercise 4: User Profile");
  print("------------------------");

  // TODO: Create a user profile with the following information:
  // - Basic info (name, age, email)
  // - Address (street, city, zipCode)
  // - Preferences (theme, notifications, language)
  // - Social media links (List<String>)

  // Your code here:
  String name = "Alex Chen";
  int age = 28;
  String email = "alex.chen@email.com";

  Map<String, String> address = {
    "street": "456 Oak Avenue",
    "city": "San Francisco",
    "zipCode": "94102",
  };

  Map<String, dynamic> preferences = {
    "theme": "dark",
    "notifications": true,
    "language": "English",
  };

  List<String> socialMedia = [
    "twitter.com/alexchen",
    "linkedin.com/in/alexchen",
  ];

  // Display profile
  print("User Profile:");
  print("Name: $name");
  print("Age: $age");
  print("Email: $email");
  print(
    "Address: ${address['street']}, ${address['city']} ${address['zipCode']}",
  );
  print("Theme: ${preferences['theme']}");
  print("Notifications: ${preferences['notifications']}");
  print("Language: ${preferences['language']}");
  print("Social Media: ${socialMedia.join(', ')}");
  print("");
}

// Exercise 5: Game Statistics
// Track game statistics using various data types
void exercise5() {
  print("Exercise 5: Game Statistics");
  print("---------------------------");

  // TODO: Create game statistics for a player:
  // - playerName (String)
  // - score (int)
  // - level (int)
  // - isOnline (bool)
  // - achievements (List<String>)
  // - gameStats (Map<String, int>) - e.g., {"wins": 10, "losses": 5, "draws": 2}

  // Your code here:
  String playerName = "GameMaster";
  int score = 15420;
  int level = 15;
  bool isOnline = true;
  List<String> achievements = ["First Win", "Level 10", "Perfect Score"];
  Map<String, int> gameStats = {
    "wins": 45,
    "losses": 12,
    "draws": 3,
    "totalGames": 60,
  };

  // Calculate win rate
  double winRate = (gameStats["wins"]! / gameStats["totalGames"]!) * 100;

  // Display statistics
  print("Player: $playerName");
  print("Score: $score");
  print("Level: $level");
  print("Online: $isOnline");
  print("Achievements: ${achievements.join(', ')}");
  print("Games Played: ${gameStats['totalGames']}");
  print("Wins: ${gameStats['wins']}");
  print("Losses: ${gameStats['losses']}");
  print("Draws: ${gameStats['draws']}");
  print("Win Rate: ${winRate.toStringAsFixed(1)}%");
  print("");
}

// ========================================
// BONUS EXERCISES (Advanced)
// ========================================

// Bonus Exercise 1: Type Conversion Practice
void bonusExercise1() {
  print("Bonus Exercise 1: Type Conversion");
  print("---------------------------------");

  // TODO: Practice type conversions
  String numberString = "42";
  String decimalString = "3.14";

  // Convert string to numbers
  int number = int.parse(numberString);
  double decimal = double.parse(decimalString);

  // Convert numbers back to strings
  String numberBackToString = number.toString();
  String decimalBackToString = decimal.toString();

  print("Original string: $numberString");
  print("Converted to int: $number");
  print("Converted back to string: $numberBackToString");
  print("Original decimal string: $decimalString");
  print("Converted to double: $decimal");
  print("Converted back to string: $decimalBackToString");
  print("");
}

// Bonus Exercise 2: Null Safety Practice
void bonusExercise2() {
  print("Bonus Exercise 2: Null Safety");
  print("------------------------------");

  // TODO: Practice null safety
  String? nullableName;
  String nonNullableName = "John";

  // Safe navigation
  print("Nullable name length: ${nullableName?.length}");
  print("Non-nullable name length: ${nonNullableName.length}");

  // Null-aware operators
  String displayName = nullableName ?? "Unknown";
  print("Display name: $displayName");

  // Assign a value to nullable variable
  nullableName = "Jane";
  print("Nullable name after assignment: ${nullableName.length}");
  print("");
}
