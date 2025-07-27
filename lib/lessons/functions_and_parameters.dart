// ========================================
// LESSON: Functions and Parameters in Dart
// ========================================

// Functions are reusable blocks of code that perform specific tasks.
// They help us organize code, avoid repetition, and make our programs more modular.

void main() {
  print("=== FUNCTIONS AND PARAMETERS IN DART ===\n");

  // ========================================
  // 1. BASIC FUNCTION DECLARATION
  // ========================================

  print("1. BASIC FUNCTION DECLARATION:");
  print("------------------------------");

  // Simple function with no parameters
  void sayHello() {
    print("Hello, World!");
  }

  // Function with parameters
  void greetPerson(String name) {
    print("Hello, $name!");
  }

  // Function with multiple parameters
  void introducePerson(String name, int age) {
    print("Hi, I'm $name and I'm $age years old.");
  }

  // Function that returns a value
  int addNumbers(int a, int b) {
    return a + b;
  }

  // Function with type inference
  // lambda function
  double multiplyNumbers(double x, double y) => x * y;

  // Calling functions
  sayHello();
  greetPerson("Alice");
  introducePerson("Bob", 25);

  int sum = addNumbers(5, 3);
  print("Sum: $sum");

  double product = multiplyNumbers(4.5, 2.0);
  print("Product: $product");
  print("");

  // ========================================
  // 2. FUNCTION PARAMETERS
  // ========================================

  print("2. FUNCTION PARAMETERS:");
  print("----------------------");

  // Required parameters
  void printUserInfo(String name, int age, String email) {
    print("Name: $name");
    print("Age: $age");
    print("Email: $email");
  }

  printUserInfo("John", 30, "john@example.com");

  // Optional positional parameters (using [])
  void printUserInfoOptional(String name, [int? age, String? email]) {
    print("Name: $name");
    if (age != null) print("Age: $age");
    if (email != null) print("Email: $email");
  }

  printUserInfoOptional("Jane");
  printUserInfoOptional("Jane", 25);
  printUserInfoOptional("Jane", 25, "jane@example.com");

  // Optional named parameters (using {})
  void printUserInfoNamed(
    String name, {
    int? age,
    String? email,
    String? city,
  }) {
    print("Name: $name");
    if (age != null) print("Age: $age");
    if (email != null) print("Email: $email");
    if (city != null) print("City: $city");
  }

  printUserInfoNamed("Alice");
  printUserInfoNamed("Alice", age: 28);
  printUserInfoNamed("Alice", age: 28, email: "alice@example.com");
  printUserInfoNamed("Alice", city: "New York", age: 28);

  // Required named parameters (using required keyword)
  void printUserInfoRequired(
    String name, {
    required int age,
    required String email,
  }) {
    print("Name: $name");
    print("Age: $age");
    print("Email: $email");
  }

  printUserInfoRequired("Bob", age: 35, email: "bob@example.com");

  // Default parameter values
  void greetWithDefault(String name, {String greeting = "Hello"}) {
    print("$greeting, $name!");
  }

  greetWithDefault("Charlie");
  greetWithDefault("Charlie", greeting: "Good morning");

  // Default values with positional parameters
  void calculateArea(double length, [double width = 1.0]) {
    double area = length * width;
    print("Area: $area");
  }

  calculateArea(5.0); // Square with side 5
  calculateArea(5.0, 3.0); // Rectangle 5x3
  print("");

  // ========================================
  // 3. RETURN TYPES AND VALUES
  // ========================================

  print("3. RETURN TYPES AND VALUES:");
  print("---------------------------");

  // Explicit return type
  int getSquare(int number) {
    return number * number;
  }

  // Type inference (Dart infers return type)
  double getAverage(List<double> numbers) {
    if (numbers.isEmpty) return 0.0;
    double sum = 0.0;
    for (double number in numbers) {
      sum += number;
    }
    return sum / numbers.length;
  }

  // Multiple return statements
  String getGrade(int score) {
    if (score >= 90) return "A";
    if (score >= 80) return "B";
    if (score >= 70) return "C";
    if (score >= 60) return "D";
    return "F";
  }

  // Void functions (no return value)
  void printGrade(int score) {
    String grade = getGrade(score);
    print("Score: $score, Grade: $grade");
  }

  // Using the functions
  int square = getSquare(7);
  print("Square of 7: $square");

  List<double> scores = [85.5, 92.0, 78.5, 96.0];
  double average = getAverage(scores);
  print("Average score: ${average.toStringAsFixed(2)}");

  String grade = getGrade(87);
  print("Grade for 87: $grade");

  printGrade(95);
  print("");

  // ========================================
  // 4. FUNCTION OVERLOADING AND OPTIONAL PARAMETERS
  // ========================================

  print("4. FUNCTION OVERLOADING AND OPTIONAL PARAMETERS:");
  print("------------------------------------------------");

  // Dart doesn't support traditional function overloading, but we can achieve similar results

  // Multiple functions with different parameter patterns
  void createUser(String name) {
    print("Created user: $name");
  }

  void createUserWithAge(String name, int age) {
    print("Created user: $name, age: $age");
  }

  void createUserWithDetails(String name, {int? age, String? email}) {
    print("Created user: $name");
    if (age != null) print("Age: $age");
    if (email != null) print("Email: $email");
  }

  // Using different parameter combinations
  createUser("Alice");
  createUserWithAge("Bob", 25);
  createUserWithDetails("Charlie", age: 30, email: "charlie@example.com");

  // Function with many optional parameters
  void buildWidget({
    String? title,
    String? subtitle,
    Color? backgroundColor,
    double? width,
    double? height,
    bool? isVisible = true,
  }) {
    print("Building widget:");
    if (title != null) print("  Title: $title");
    if (subtitle != null) print("  Subtitle: $subtitle");
    if (backgroundColor != null) print("  Background: $backgroundColor");
    if (width != null) print("  Width: $width");
    if (height != null) print("  Height: $height");
    print("  Visible: $isVisible");
  }

  buildWidget(title: "My App");
  buildWidget(
    title: "My App",
    subtitle: "Welcome",
    backgroundColor: Colors.blue,
    width: 300.0,
    height: 200.0,
  );
  print("");

  // ========================================
  // 5. HIGHER-ORDER FUNCTIONS
  // ========================================

  print("5. HIGHER-ORDER FUNCTIONS:");
  print("--------------------------");

  // Function as parameter
  void processNumbers(List<int> numbers, int Function(int) operation) {
    for (int number in numbers) {
      int result = operation(number);
      print("$number -> $result");
    }
  }

  // Function definitions
  // int square(int x) => x * x;
  int doubleValue(int x) => x * 2;
  int addTen(int x) => x + 10;

  List<int> numbers = [1, 2, 3, 4, 5];

  print("Squaring numbers:");
  // processNumbers(numbers, square);

  print("\nDoubling numbers:");
  processNumbers(numbers, doubleValue);

  print("\nAdding ten to numbers:");
  processNumbers(numbers, addTen);

  // Function that returns a function
  int Function(int) createMultiplier(int factor) {
    return (int x) => x * factor;
  }

  int Function(int) multiplyByThree = createMultiplier(3);
  int Function(int) multiplyByFive = createMultiplier(5);

  print("\nMultiplying by 3:");
  processNumbers(numbers, multiplyByThree);

  print("\nMultiplying by 5:");
  processNumbers(numbers, multiplyByFive);
  print("");

  // ========================================
  // 6. ANONYMOUS FUNCTIONS (LAMBDAS)
  // ========================================

  print("6. ANONYMOUS FUNCTIONS (LAMBDAS):");
  print("--------------------------------");

  // Anonymous function with forEach
  List<String> fruits = ["Apple", "Banana", "Orange"];

  print("Fruits:");
  for (var fruit in fruits) {
    print("- $fruit");
  }

  // Anonymous function with map
  List<int> lengths = fruits.map((fruit) => fruit.length).toList();
  print("Fruit name lengths: $lengths");

  // Anonymous function with where (filter)
  List<String> longFruits = fruits.where((fruit) => fruit.length > 5).toList();
  print("Fruits with names longer than 5 characters: $longFruits");

  // Anonymous function with reduce
  String longestFruit = fruits.reduce(
    (current, next) => current.length > next.length ? current : next,
  );
  print("Longest fruit name: $longestFruit");

  // Anonymous function with sort
  List<int> numbers2 = [3, 1, 4, 1, 5, 9, 2, 6];
  numbers2.sort((a, b) => a.compareTo(b));
  print("Sorted numbers: $numbers2");

  // Anonymous function with custom logic
  void processList(List<int> list, void Function(int) processor) {
    for (int item in list) {
      processor(item);
    }
  }

  print("\nProcessing list with anonymous function:");
  processList([1, 2, 3, 4, 5], (number) {
    print("Processing: $number, Result: ${number * 2}");
  });
  print("");

  // ========================================
  // 7. RECURSIVE FUNCTIONS
  // ========================================

  print("7. RECURSIVE FUNCTIONS:");
  print("----------------------");

  // Factorial function
  int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
  }

  print("Factorial of 5: ${factorial(5)}");
  print("Factorial of 3: ${factorial(3)}");

  // Fibonacci function
  int fibonacci(int n) {
    if (n <= 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  print("Fibonacci sequence (first 8 numbers):");
  for (int i = 0; i < 8; i++) {
    print("F($i) = ${fibonacci(i)}");
  }

  // Recursive list processing
  int sumList(List<int> list) {
    if (list.isEmpty) return 0;
    return list.first + sumList(list.sublist(1));
  }

  List<int> numbers3 = [1, 2, 3, 4, 5];
  print("Sum of $numbers3: ${sumList(numbers3)}");
  print("");

  // ========================================
  // 8. PRACTICAL EXAMPLES FOR FLUTTER
  // ========================================

  print("8. PRACTICAL EXAMPLES FOR FLUTTER:");
  print("----------------------------------");

  // Example 1: Form validation functions
  bool isValidEmail(String email) {
    return email.contains("@") && email.contains(".");
  }

  bool isValidPassword(String password) {
    return password.length >= 8 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[0-9]'));
  }

  String? validateForm(String email, String password, int age) {
    if (!isValidEmail(email)) return "Invalid email address";
    if (!isValidPassword(password))
      return "Password must be at least 8 characters with uppercase and number";
    if (age < 18) return "Must be 18 or older";
    return null; // No errors
  }

  // Test form validation
  String? error = validateForm("user@example.com", "Password123", 25);
  if (error == null) {
    print("Form is valid");
  } else {
    print("Form error: $error");
  }

  // Example 2: Data processing functions
  List<Map<String, dynamic>> users = [
    {"name": "Alice", "age": 25, "score": 85},
    {"name": "Bob", "age": 30, "score": 92},
    {"name": "Charlie", "age": 22, "score": 78},
  ];

  List<Map<String, dynamic>> filterUsers(
    List<Map<String, dynamic>> userList, {
    int? minAge,
    int? minScore,
  }) {
    return userList.where((user) {
      if (minAge != null && user["age"] < minAge) return false;
      if (minScore != null && user["score"] < minScore) return false;
      return true;
    }).toList();
  }

  List<Map<String, dynamic>> sortUsers(
    List<Map<String, dynamic>> userList,
    String sortBy, {
    bool ascending = true,
  }) {
    List<Map<String, dynamic>> sorted = List.from(userList);
    sorted.sort((a, b) {
      int comparison = a[sortBy].compareTo(b[sortBy]);
      return ascending ? comparison : -comparison;
    });
    return sorted;
  }

  // Use the functions
  List<Map<String, dynamic>> filteredUsers = filterUsers(
    users,
    minAge: 25,
    minScore: 80,
  );
  print("Users 25+ with score 80+: $filteredUsers");

  List<Map<String, dynamic>> sortedUsers = sortUsers(
    users,
    "score",
    ascending: false,
  );
  print("Users sorted by score (descending): $sortedUsers");

  // Example 3: UI helper functions
  String formatCurrency(double amount, {String currency = "USD"}) {
    return "${currency == "USD" ? "\$" : currency}${amount.toStringAsFixed(2)}";
  }

  String formatDate(DateTime date) {
    return "${date.month}/${date.day}/${date.year}";
  }

  String getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case "active":
        return "green";
      case "pending":
        return "yellow";
      case "inactive":
        return "red";
      default:
        return "gray";
    }
  }

  // Use UI helpers
  print("Price: ${formatCurrency(29.99)}");
  print("Date: ${formatDate(DateTime.now())}");
  print("Status color: ${getStatusColor("active")}");

  // Example 4: API response processing
  Map<String, dynamic> processApiResponse(Map<String, dynamic> response) {
    bool success = response["success"] ?? false;
    dynamic data = response["data"];
    String? error = response["error"];

    if (!success) {
      throw Exception(error ?? "Unknown error");
    }

    return data is Map<String, dynamic> ? data : {"result": data};
  }

  // Example 5: Configuration functions
  Map<String, dynamic> getAppConfig({String environment = "development"}) {
    Map<String, dynamic> baseConfig = {
      "appName": "My Flutter App",
      "version": "1.0.0",
    };

    switch (environment) {
      case "development":
        return {
          ...baseConfig,
          "apiUrl": "http://localhost:3000",
          "debugMode": true,
        };
      case "production":
        return {
          ...baseConfig,
          "apiUrl": "https://api.myapp.com",
          "debugMode": false,
        };
      default:
        return baseConfig;
    }
  }

  Map<String, dynamic> devConfig = getAppConfig();
  Map<String, dynamic> prodConfig = getAppConfig(environment: "production");

  print("Development config: $devConfig");
  print("Production config: $prodConfig");
  print("");

  // ========================================
  // 9. FUNCTION BEST PRACTICES
  // ========================================

  print("9. FUNCTION BEST PRACTICES:");
  print("--------------------------");

  // 1. Single Responsibility Principle
  // ❌ Bad: Function doing too many things
  void processUserDataBad(Map<String, dynamic> user) {
    // Validates user data
    if (user["age"] < 18) {
      print("User too young");
      return;
    }

    // Saves to database
    print("Saving user to database...");

    // Sends email
    print("Sending welcome email...");

    // Updates UI
    print("Updating UI...");
  }

  // ✅ Good: Separate functions for each responsibility
  bool validateUser(Map<String, dynamic> user) {
    return user["age"] >= 18;
  }

  void saveUser(Map<String, dynamic> user) {
    print("Saving user to database...");
  }

  void sendWelcomeEmail(String email) {
    print("Sending welcome email to $email...");
  }

  void updateUI() {
    print("Updating UI...");
  }

  void processUserDataGood(Map<String, dynamic> user) {
    if (!validateUser(user)) {
      print("User too young");
      return;
    }

    saveUser(user);
    sendWelcomeEmail(user["email"]);
    updateUI();
  }

  // 2. Meaningful function names
  // ❌ Bad: Unclear function names
  void calc(int a, int b) {
    print(a + b);
  }

  // ✅ Good: Clear, descriptive names
  void calculateAndPrintSum(int a, int b) {
    print("Sum: ${a + b}");
  }

  // 3. Proper parameter validation
  double divideNumbers(double a, double b) {
    if (b == 0) {
      throw ArgumentError("Cannot divide by zero");
    }
    return a / b;
  }

  // 4. Use default parameters instead of overloading
  void createButton({
    String text = "Button",
    Color? color,
    double width = 100.0,
    double height = 50.0,
    VoidCallback? onPressed,
  }) {
    print("Creating button: $text, ${width}x$height");
  }

  // 5. Return early to reduce nesting
  String getUserStatus(int age, bool isStudent, bool isWorking) {
    if (age < 0) return "Invalid age";
    if (age < 18) return "Minor";
    if (isStudent && !isWorking) return "Full-time student";
    if (isStudent && isWorking) return "Working student";
    if (isWorking) return "Working professional";
    return "Unemployed adult";
  }

  print("");

  // ========================================
  // 10. COMMON PITFALLS AND HOW TO AVOID THEM
  // ========================================

  print("10. COMMON PITFALLS AND HOW TO AVOID THEM:");
  print("------------------------------------------");

  // Pitfall 1: Forgetting return statements
  // ❌ Bad: Missing return in some code paths
  // int getAbsoluteValue(int number) {
  //   if (number >= 0) {
  //     return number;
  //   }
  //   // Missing return for negative numbers!
  // }

  // ✅ Good: All code paths have return statements
  int getAbsoluteValueGood(int number) {
    if (number >= 0) {
      return number;
    }
    return -number;
  }

  // Pitfall 2: Modifying parameters
  // ❌ Bad: Modifying input parameters
  void processListBad(List<int> numbers) {
    numbers.sort(); // Modifies the original list
    print("Sorted: $numbers");
  }

  // ✅ Good: Don't modify input parameters
  void processListGood(List<int> numbers) {
    List<int> sorted = List.from(numbers)..sort();
    print("Original: $numbers");
    print("Sorted: $sorted");
  }

  // Pitfall 3: Deep nesting in functions
  // ❌ Bad: Deep nesting makes code hard to read
  void processUserBad(Map<String, dynamic> user) {
    if (user.containsKey("name")) {
      if (user["name"] != null) {
        if (user["name"].toString().isNotEmpty) {
          if (user.containsKey("email")) {
            if (user["email"] != null) {
              print("Processing user: ${user["name"]}");
            }
          }
        }
      }
    }
  }

  // ✅ Good: Early returns reduce nesting
  void processUserGood(Map<String, dynamic> user) {
    if (!user.containsKey("name") ||
        user["name"] == null ||
        user["name"].toString().isEmpty) {
      return;
    }

    if (!user.containsKey("email") || user["email"] == null) {
      return;
    }

    print("Processing user: ${user["name"]}");
  }

  // Pitfall 4: Ignoring return values
  // ❌ Bad: Not using return values
  bool isValidEmailBad(String email) {
    return email.contains("@") && email.contains(".");
  }

  void processEmailBad(String email) {
    isValidEmailBad(email); // Return value ignored!
    print("Processing email...");
  }

  // ✅ Good: Use return values
  void processEmailGood(String email) {
    if (isValidEmailBad(email)) {
      print("Processing valid email: $email");
    } else {
      print("Invalid email: $email");
    }
  }

  // Pitfall 5: Overly complex function signatures
  // ❌ Bad: Too many parameters
  void createUserBad(
    String name,
    int age,
    String email,
    String phone,
    String address,
    String city,
    String state,
    String zipCode,
    bool isActive,
    String role,
    DateTime createdAt,
  ) {
    // Function body
  }

  // ✅ Good: Use objects or named parameters
  void createUserGood({
    required String name,
    required int age,
    required String email,
    String? phone,
    String? address,
    bool isActive = true,
    String role = "user",
  }) {
    // Function body
  }
  print("");

  // ========================================
  // 11. EXERCISES FOR STUDENTS
  // ========================================

  print("11. EXERCISES FOR STUDENTS:");
  print("---------------------------");

  print("Exercise 1: Calculator Functions");
  // TODO: Create functions for basic math operations

  print("Exercise 2: String Processing Functions");
  // TODO: Create functions to manipulate and validate strings

  print("Exercise 3: List Processing Functions");
  // TODO: Create functions to filter, sort, and transform lists

  print("Exercise 4: Data Validation Functions");
  // TODO: Create comprehensive validation functions

  print("Exercise 5: Utility Functions");
  // TODO: Create useful utility functions for common tasks

  print("\n=== END OF LESSON ===");
}

// ========================================
// STUDENT EXERCISES
// ========================================

// Exercise 1: Calculator Functions
void calculatorFunctions() {
  // TODO: Create the following functions:
  // - add(a, b): Adds two numbers
  // - subtract(a, b): Subtracts b from a
  // - multiply(a, b): Multiplies two numbers
  // - divide(a, b): Divides a by b (handle division by zero)
  // - power(base, exponent): Raises base to the power of exponent
  // - calculate(operation, a, b): Performs operation based on string

  // Your code here:
}

// Exercise 2: String Processing Functions
void stringProcessingFunctions() {
  // TODO: Create the following functions:
  // - reverseString(text): Reverses a string
  // - countVowels(text): Counts vowels in a string
  // - isPalindrome(text): Checks if string is palindrome
  // - capitalizeWords(text): Capitalizes first letter of each word
  // - removeDuplicates(text): Removes duplicate characters
  // - formatPhoneNumber(number): Formats phone number

  // Your code here:
}

// Exercise 3: List Processing Functions
void listProcessingFunctions() {
  // TODO: Create the following functions:
  // - findMax(numbers): Finds maximum value in list
  // - findMin(numbers): Finds minimum value in list
  // - calculateAverage(numbers): Calculates average
  // - removeDuplicates(list): Removes duplicate items
  // - sortList(list, ascending): Sorts list
  // - filterList(list, condition): Filters list based on condition

  // Your code here:
}

// Exercise 4: Data Validation Functions
void dataValidationFunctions() {
  // TODO: Create the following functions:
  // - validateEmail(email): Validates email format
  // - validatePassword(password): Validates password strength
  // - validatePhoneNumber(phone): Validates phone number
  // - validateAge(age): Validates age range
  // - validateCreditCard(cardNumber): Validates credit card number
  // - validateForm(formData): Validates entire form

  // Your code here:
}

// Exercise 5: Utility Functions
void utilityFunctions() {
  // TODO: Create the following functions:
  // - formatCurrency(amount, currency): Formats currency
  // - formatDate(date): Formats date
  // - generateRandomString(length): Generates random string
  // - debounce(function, delay): Debounces function calls
  // - memoize(function): Memoizes function results
  // - retry(function, maxAttempts): Retries function on failure

  // Your code here:
}

// Helper class for color representation
class Color {
  final String name;
  const Color(this.name);

  @override
  String toString() => name;
}

// Predefined colors
class Colors {
  static const Color blue = Color("blue");
  static const Color red = Color("red");
  static const Color green = Color("green");
  static const Color yellow = Color("yellow");
  static const Color gray = Color("gray");
}

// Callback type for functions
typedef VoidCallback = void Function();
