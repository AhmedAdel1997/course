// ========================================
// LESSON: Control Flow in Dart
// ========================================

// Control flow allows us to make decisions and repeat code based on conditions.
// It's how we make our programs "think" and respond to different situations.

void main() {
  print("=== CONTROL FLOW IN DART ===\n");

  // ========================================
  // 1. IF STATEMENTS
  // ========================================

  print("1. IF STATEMENTS:");
  print("-----------------");

  int age = 18;

  // Simple if statement
  if (age >= 18) {
    print("You are an adult.");
  }

  // If-else statement
  if (age >= 18) {
    print("You can vote and drive.");
  } else {
    print("You are a minor.");
  }

  // If-else if-else statement
  if (age < 13) {
    print("You are a child.");
  } else if (age < 18) {
    print("You are a teenager.");
  } else if (age < 65) {
    print("You are an adult.");
  } else {
    print("You are a senior.");
  }

  // Nested if statements
  bool isStudent = true;
  bool hasID = true;

  if (age >= 18) {
    if (isStudent) {
      if (hasID) {
        print("You can enter with student discount.");
      } else {
        print("You need an ID to get student discount.");
      }
    } else {
      print("You can enter as an adult.");
    }
  } else {
    print("You are too young to enter.");
  }
  print("");

  // ========================================
  // 2. CONDITIONAL EXPRESSIONS (TERNARY OPERATOR)
  // ========================================

  print("2. CONDITIONAL EXPRESSIONS:");
  print("---------------------------");

  // Ternary operator (condition ? value1 : value2)
  int score = 85;
  String grade =
      score >= 90
          ? "A"
          : score >= 80
          ? "B"
          : score >= 70
          ? "C"
          : "D";
  print("Score: $score, Grade: $grade");

  // Null-aware conditional
  String? userName;
  String displayName = userName ?? "Guest";
  print("Display name: $displayName");

  // Using null-aware operator for cleaner code
  String displayName2 = userName ?? "Guest";
  print("Display name (null-aware): $displayName2");

  // Conditional assignment
  int maxAttempts = 3;
  int currentAttempts = 2;
  bool canRetry = currentAttempts < maxAttempts;
  print("Can retry: $canRetry");
  print("");

  // ========================================
  // 3. SWITCH STATEMENTS
  // ========================================

  print("3. SWITCH STATEMENTS:");
  print("--------------------");

  String dayOfWeek = "Monday";

  switch (dayOfWeek) {
    case "Monday":
      print("Start of the work week");
      break;
    case "Tuesday":
    case "Wednesday":
    case "Thursday":
      print("Mid-week");
      break;
    case "Friday":
      print("TGIF!");
      break;
    case "Saturday":
    case "Sunday":
      print("Weekend!");
      break;
    default:
      print("Invalid day");
  }

  // Switch with expressions (Dart 3.0+)
  int month = 3;
  String season = switch (month) {
    12 || 1 || 2 => "Winter",
    3 || 4 || 5 => "Spring",
    6 || 7 || 8 => "Summer",
    9 || 10 || 11 => "Fall",
    _ => "Invalid month",
  };
  print("Month $month is in $season");

  // Switch with guards
  int userAge = 25;
  String userType = switch (userAge) {
    < 13 => "Child",
    < 18 => "Teenager",
    < 65 => "Adult",
    _ => "Senior",
  };
  print("Age $userAge: $userType");
  print("");

  // ========================================
  // 4. FOR LOOPS
  // ========================================

  print("4. FOR LOOPS:");
  print("-------------");

  // Traditional for loop
  print("Traditional for loop:");
  for (int i = 0; i < 5; i++) {
    print("Count: $i");
  }

  // For-in loop with lists
  print("\nFor-in loop with list:");
  List<String> fruits = ["Apple", "Banana", "Orange", "Grape"];
  for (String fruit in fruits) {
    print("I like $fruit");
  }

  // For-in loop with index
  print("\nFor-in loop with index:");
  for (int i = 0; i < fruits.length; i++) {
    print("${i + 1}. ${fruits[i]}");
  }

  // For-in loop with Map entries
  print("\nFor-in loop with Map:");
  Map<String, int> scores = {"Alice": 95, "Bob": 87, "Charlie": 92};

  for (MapEntry<String, int> entry in scores.entries) {
    print("${entry.key}: ${entry.value}");
  }

  // For-in loop with keys and values
  print("\nFor-in loop with keys:");
  for (String name in scores.keys) {
    print("Student: $name");
  }

  print("\nFor-in loop with values:");
  for (int score in scores.values) {
    print("Score: $score");
  }

  // For-in loop with Set
  print("\nFor-in loop with Set:");
  Set<String> colors = {
    "Red",
    "Green",
    "Blue",
    "Red",
  }; // Red will only appear once
  for (String color in colors) {
    print("Color: $color");
  }
  print("");

  // ========================================
  // 5. WHILE LOOPS
  // ========================================

  print("5. WHILE LOOPS:");
  print("---------------");

  // Simple while loop
  print("Simple while loop:");
  int count = 0;
  while (count < 3) {
    print("Count: $count");
    count++;
  }

  // While loop with condition
  print("\nWhile loop with condition:");
  int number = 10;
  while (number > 0) {
    print("Number: $number");
    number -= 2;
  }

  // While loop for user input simulation
  print("\nWhile loop for input validation:");
  String password = "secret123";
  int attempts = 0;
  bool isCorrect = false;

  while (!isCorrect && attempts < 3) {
    attempts++;
    print("Attempt $attempts: Entering password...");

    // Simulate password check
    if (attempts == 2) {
      isCorrect = true;
      print("Password correct!");
    } else {
      print("Password incorrect. Try again.");
    }
  }

  if (!isCorrect) {
    print("Too many attempts. Account locked.");
  }
  print("");

  // ========================================
  // 6. DO-WHILE LOOPS
  // ========================================

  print("6. DO-WHILE LOOPS:");
  print("------------------");

  // Do-while loop (executes at least once)
  print("Do-while loop:");
  int diceRoll = 0;
  do {
    diceRoll = (DateTime.now().millisecondsSinceEpoch % 6) + 1;
    print("Dice roll: $diceRoll");
  } while (diceRoll != 6);

  // Do-while for menu simulation
  print("\nDo-while for menu:");
  int choice = 0;
  do {
    print("Menu:");
    print("1. View profile");
    print("2. Edit settings");
    print("3. Exit");
    choice = 3; // Simulate user choosing exit
    print("User chose: $choice");
  } while (choice != 3);
  print("Goodbye!");
  print("");

  // ========================================
  // 7. LOOP CONTROL STATEMENTS
  // ========================================

  print("7. LOOP CONTROL STATEMENTS:");
  print("---------------------------");

  // Break statement
  print("Break statement:");
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break; // Exit the loop when i equals 5
    }
    print("i = $i");
  }
  print("Loop ended with break");

  // Continue statement
  print("\nContinue statement:");
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue; // Skip iteration when i equals 2
    }
    print("i = $i");
  }
  print("Loop ended with continue");

  // Break with labels (nested loops)
  print("\nBreak with labels:");
  outerLoop:
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (i == 1 && j == 1) {
        break outerLoop; // Break out of both loops
      }
      print("i = $i, j = $j");
    }
  }
  print("Nested loops ended");
  print("");

  // ========================================
  // 8. PRACTICAL EXAMPLES FOR FLUTTER
  // ========================================

  print("8. PRACTICAL EXAMPLES FOR FLUTTER:");
  print("----------------------------------");

  // Example 1: User authentication flow
  print("Example 1: User Authentication Flow");
  bool isLoggedIn = false;
  bool hasValidToken = true;
  String userRole = "user";

  if (isLoggedIn && hasValidToken) {
    switch (userRole) {
      case "admin":
        print("Show admin dashboard");
        break;
      case "moderator":
        print("Show moderator panel");
        break;
      case "user":
        print("Show user dashboard");
        break;
      default:
        print("Show basic interface");
    }
  } else {
    print("Show login screen");
  }

  // Example 2: Form validation
  // print("\nExample 2: Form Validation");
  // String email = "user@example.com";
  // String password = "password123";
  // int age = 25;
  // bool termsAccepted = true;

  // List<String> errors = [];

  // if (email.isEmpty || !email.contains("@")) {
  //   errors.add("Invalid email address");
  // }

  // if (password.length < 8) {
  //   errors.add("Password must be at least 8 characters");
  // }

  // if (age < 18) {
  //   errors.add("Must be 18 or older");
  // }

  // if (!termsAccepted) {
  //   errors.add("Must accept terms and conditions");
  // }

  // if (errors.isEmpty) {
  //   print("Form is valid. Proceeding with registration.");
  // } else {
  //   print("Form has errors:");
  //   for (String error in errors) {
  //     print("- $error");
  //   }
  // }

  // Example 3: Shopping cart processing
  print("\nExample 3: Shopping Cart Processing");
  List<Map<String, dynamic>> cart = [
    {"name": "Laptop", "price": 999.99, "quantity": 1},
    {"name": "Mouse", "price": 29.99, "quantity": 2},
    {"name": "Keyboard", "price": 89.99, "quantity": 1},
  ];

  double total = 0.0;
  int totalItems = 0;

  for (Map<String, dynamic> item in cart) {
    double itemTotal = item["price"] * item["quantity"];
    total += itemTotal;
    totalItems += item["quantity"] as int;

    print(
      "${item["name"]}: \$${item["price"]} x ${item["quantity"]} = \$${itemTotal.toStringAsFixed(2)}",
    );
  }

  print("Total items: $totalItems");
  print("Total cost: \$${total.toStringAsFixed(2)}");

  // Apply discounts based on total
  double discount = 0.0;
  if (total >= 1000) {
    discount = total * 0.10; // 10% discount
    print("Applied 10% discount: -\$${discount.toStringAsFixed(2)}");
  } else if (total >= 500) {
    discount = total * 0.05; // 5% discount
    print("Applied 5% discount: -\$${discount.toStringAsFixed(2)}");
  }

  double finalTotal = total - discount;
  print("Final total: \$${finalTotal.toStringAsFixed(2)}");

  // Example 4: UI state management
  print("\nExample 4: UI State Management");
  bool isLoading = false;
  bool hasError = false;
  String? errorMessage;
  List<String> data = ["Item 1", "Item 2", "Item 3"];

  // Determine what to show based on state
  if (isLoading) {
    print("Show loading spinner");
  } else if (hasError && errorMessage != null) {
    print("Show error message: $errorMessage");
  } else if (data.isEmpty) {
    print("Show empty state");
  } else {
    print("Show data list:");
    for (int i = 0; i < data.length; i++) {
      print("  ${i + 1}. ${data[i]}");
    }
  }

  // Example 5: Game logic
  print("\nExample 5: Game Logic");
  int playerHealth = 100;
  int playerLevel = 5;
  List<String> inventory = ["Sword", "Shield", "Potion"];
  bool hasKey = false;

  // Check if player can enter boss room
  bool canEnterBossRoom =
      playerHealth > 50 &&
      playerLevel >= 5 &&
      inventory.contains("Sword") &&
      hasKey;

  if (canEnterBossRoom) {
    print("Player can enter boss room");
  } else {
    print("Player cannot enter boss room. Requirements:");
    if (playerHealth <= 50)
      print("- Need more health (current: $playerHealth)");
    if (playerLevel < 5) print("- Need higher level (current: $playerLevel)");
    if (!inventory.contains("Sword")) print("- Need a sword");
    if (!hasKey) print("- Need the boss room key");
  }
  print("");

  // ========================================
  // 9. COMMON PATTERNS AND BEST PRACTICES
  // ========================================

  print("9. COMMON PATTERNS AND BEST PRACTICES:");
  print("--------------------------------------");

  // Pattern 1: Early return
  print("Pattern 1: Early Return");
  String getUserStatus(int age, bool isStudent, bool isWorking) {
    if (age < 0) return "Invalid age";
    if (age < 18) return "Minor";
    if (isStudent && !isWorking) return "Full-time student";
    if (isStudent && isWorking) return "Working student";
    if (isWorking) return "Working professional";
    return "Unemployed adult";
  }

  print("Status: ${getUserStatus(20, true, false)}");
  print("Status: ${getUserStatus(25, false, true)}");
  print("Status: ${getUserStatus(-5, false, false)}");

  // Pattern 2: Guard clauses
  print("\nPattern 2: Guard Clauses");
  void processUser(String? name, int? age, String? email) {
    // Guard clauses
    if (name == null || name.isEmpty) {
      print("Error: Name is required");
      return;
    }

    if (age == null || age < 0) {
      print("Error: Valid age is required");
      return;
    }

    if (email == null || !email.contains("@")) {
      print("Error: Valid email is required");
      return;
    }

    // Main logic (only reached if all guards pass)
    print("Processing user: $name, age $age, email $email");
  }

  processUser("John", 25, "john@example.com");
  processUser("", 25, "john@example.com");
  processUser("John", -5, "john@example.com");

  // Pattern 3: Switch expressions for mapping
  print("\nPattern 3: Switch Expressions for Mapping");
  String getDayType(String day) => switch (day.toLowerCase()) {
    "monday" || "tuesday" || "wednesday" || "thursday" || "friday" => "Weekday",
    "saturday" || "sunday" => "Weekend",
    _ => "Unknown",
  };

  print("Monday is a: ${getDayType("Monday")}");
  print("Saturday is a: ${getDayType("Saturday")}");
  print("Invalid is a: ${getDayType("Invalid")}");

  // Pattern 4: Loop with accumulator
  print("\nPattern 4: Loop with Accumulator");
  List<int> numbers = [1, 2, 3, 4, 5];
  int sum = 0;
  int product = 1;

  for (int number in numbers) {
    sum += number;
    product *= number;
  }

  print("Numbers: $numbers");
  print("Sum: $sum");
  print("Product: $product");

  // Pattern 5: Conditional list building
  print("\nPattern 5: Conditional List Building");
  bool showAdminFeatures = true;
  bool showPremiumFeatures = false;

  List<String> menuItems = [
    "Home",
    "Profile",
    "Settings",
    if (showAdminFeatures) "Admin Panel",
    if (showPremiumFeatures) "Premium Features",
    "Logout",
  ];

  print("Menu items: $menuItems");
  print("");

  // ========================================
  // 10. COMMON PITFALLS AND HOW TO AVOID THEM
  // ========================================

  print("10. COMMON PITFALLS AND HOW TO AVOID THEM:");
  print("------------------------------------------");

  // Pitfall 1: Infinite loops
  print("Pitfall 1: Infinite Loops");
  // ❌ Bad: This would cause an infinite loop
  // int i = 0;
  // while (i < 10) {
  //   print("i = $i");
  //   // Missing i++ would cause infinite loop
  // }

  // ✅ Good: Proper loop with increment
  int i = 0;
  while (i < 3) {
    print("i = $i");
    i++;
  }

  // Pitfall 2: Off-by-one errors
  print("\nPitfall 2: Off-by-One Errors");
  List<String> items = ["A", "B", "C"];

  // ❌ Bad: Off-by-one error
  // for (int j = 0; j <= items.length; j++) {
  //   print(items[j]); // Would cause index out of range
  // }

  // ✅ Good: Correct bounds
  for (int j = 0; j < items.length; j++) {
    print("Item $j: ${items[j]}");
  }

  // Pitfall 3: Missing break in switch
  print("\nPitfall 3: Missing Break in Switch");
  String status = "active";

  // ❌ Bad: Missing break (fall-through)
  switch (status) {
    case "active":
      print("User is active");
    // Missing break - would fall through to next case
    case "inactive":
      print("User is inactive");
      break;
  }

  // ✅ Good: Proper switch with break
  switch (status) {
    case "active":
      print("User is active");
      break;
    case "inactive":
      print("User is inactive");
      break;
    default:
      print("Unknown status");
  }

  // Pitfall 4: Complex nested conditions
  print("\nPitfall 4: Complex Nested Conditions");
  bool isAuthenticated = true;
  bool hasPermission = true;
  bool isAdmin = false;
  bool isModerator = true;

  // ❌ Bad: Deep nesting
  if (isAuthenticated) {
    if (hasPermission) {
      if (isAdmin) {
        print("Show admin panel");
      } else {
        if (isModerator) {
          print("Show moderator panel");
        } else {
          print("Show user panel");
        }
      }
    } else {
      print("Access denied");
    }
  } else {
    print("Please log in");
  }

  // ✅ Good: Early returns and guard clauses
  if (!isAuthenticated) {
    print("Please log in");
    return;
  }

  if (!hasPermission) {
    print("Access denied");
    return;
  }

  if (isAdmin) {
    print("Show admin panel");
  } else if (isModerator) {
    print("Show moderator panel");
  } else {
    print("Show user panel");
  }
  print("");

  // ========================================
  // 11. EXERCISES FOR STUDENTS
  // ========================================

  print("11. EXERCISES FOR STUDENTS:");
  print("---------------------------");

  print("Exercise 1: Number Guessing Game");
  // TODO: Create a number guessing game with loops and conditions

  print("Exercise 2: Grade Calculator with Loops");
  // TODO: Calculate grades for multiple students using loops

  print("Exercise 3: Menu System");
  // TODO: Create an interactive menu system with switch statements

  print("Exercise 4: Data Processing");
  // TODO: Process a list of data with various conditions

  print("Exercise 5: Game State Manager");
  // TODO: Manage game states using control flow

  print("\n=== END OF LESSON ===");
}

// ========================================
// STUDENT EXERCISES
// ========================================

// Exercise 1: Number Guessing Game
void numberGuessingGame() {
  // TODO: Create a number guessing game that:
  // - Generates a random number between 1-100
  // - Asks user to guess (simulate with different values)
  // - Provides hints (higher/lower)
  // - Tracks number of attempts
  // - Allows multiple games

  // Your code here:
}

// Exercise 2: Grade Calculator with Loops
void gradeCalculatorWithLoops() {
  // TODO: Calculate grades for multiple students:
  // - Store student data (name, scores)
  // - Calculate average for each student
  // - Assign letter grades
  // - Find highest and lowest scores
  // - Calculate class average

  // Your code here:
}

// Exercise 3: Menu System
void menuSystem() {
  // TODO: Create an interactive menu system:
  // - Display menu options
  // - Handle user selection with switch
  // - Implement different menu actions
  // - Allow menu navigation
  // - Exit option

  // Your code here:
}

// Exercise 4: Data Processing
void dataProcessing() {
  // TODO: Process a list of data:
  // - Filter data based on conditions
  // - Transform data (e.g., format strings)
  // - Calculate statistics
  // - Handle edge cases
  // - Generate reports

  // Your code here:
}

// Exercise 5: Game State Manager
void gameStateManager() {
  // TODO: Manage game states:
  // - Different game states (menu, playing, paused, game over)
  // - State transitions based on conditions
  // - Handle user input for state changes
  // - Track game progress
  // - Save/load game state

  // Your code here:
}
