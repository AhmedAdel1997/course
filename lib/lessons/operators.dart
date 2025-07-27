// ========================================
// LESSON: Operators in Dart
// ========================================

// Operators are symbols that perform operations on variables and values.
// They allow us to manipulate data, make comparisons, and control program flow.

void main() {
  print("=== OPERATORS IN DART ===\n");

  // ========================================
  // 1. ARITHMETIC OPERATORS
  // ========================================

  print("1. ARITHMETIC OPERATORS:");
  print("------------------------");

  int a = 10;
  int b = 3;

  print("a = $a, b = $b");
  print("Addition: a + b = ${a + b}");
  print("Subtraction: a - b = ${a - b}");
  print("Multiplication: a * b = ${a * b}");
  print("Division: a / b = ${a / b}");
  print("Integer Division: a ~/ b = ${a ~/ b}");
  print("Modulus (Remainder): a % b = ${a % b}");
  print("Increment: a++ = ${a++} (after increment: $a)");
  print("Decrement: b-- = ${b--} (after decrement: $b)");

  // Reset values for next examples
  a = 10;
  b = 3;

  print("Prefix increment: ++a = ${++a} (a is now $a)");
  print("Prefix decrement: --b = ${--b} (b is now $b)");
  print("");

  // ========================================
  // 2. ASSIGNMENT OPERATORS
  // ========================================

  print("2. ASSIGNMENT OPERATORS:");
  print("------------------------");

  int x = 5;
  print("Initial x = $x");

  x += 3; // Same as x = x + 3
  print("After x += 3: x = $x");

  x -= 2; // Same as x = x - 2
  print("After x -= 2: x = $x");

  x *= 4; // Same as x = x * 4
  print("After x *= 4: x = $x");

  x ~/= 2; // Same as x = x ~/ 2 (integer division)
  print("After x ~/= 2: x = $x");

  x %= 3; // Same as x = x % 3
  print("After x %= 3: x = $x");

  // Compound assignment with other operators
  String message = "Hello";
  print("\nInitial message = '$message'");

  message += " World"; // String concatenation
  print("After message += ' World': '$message'");
  print("");

  // ========================================
  // 3. COMPARISON OPERATORS
  // ========================================

  print("3. COMPARISON OPERATORS:");
  print("------------------------");

  int num1 = 10;
  int num2 = 5;
  int num3 = 10;

  print("num1 = $num1, num2 = $num2, num3 = $num3");
  print("num1 == num2: ${num1 == num2}"); // Equal to
  print("num1 == num3: ${num1 == num3}"); // Equal to
  print("num1 != num2: ${num1 != num2}"); // Not equal to
  print("num1 > num2: ${num1 > num2}"); // Greater than
  print("num1 < num2: ${num1 < num2}"); // Less than
  print("num1 >= num3: ${num1 >= num3}"); // Greater than or equal
  print("num1 <= num2: ${num1 <= num2}"); // Less than or equal

  // String comparison
  String str1 = "apple";
  String str2 = "banana";
  String str3 = "apple";

  print("\nString comparison:");
  print("str1 = '$str1', str2 = '$str2', str3 = '$str3'");
  print("str1 == str2: ${str1 == str2}");
  print("str1 == str3: ${str1 == str3}");
  print(
    "str1.compareTo(str2) < 0: ${str1.compareTo(str2) < 0}",
  ); // Lexicographical comparison
  print("str1.compareTo(str2) > 0: ${str1.compareTo(str2) > 0}");
  print("");

  // ========================================
  // 4. LOGICAL OPERATORS
  // ========================================

  print("4. LOGICAL OPERATORS:");
  print("--------------------");

  bool isStudent = true;
  bool isWorking = false;
  bool hasExperience = true;

  print(
    "isStudent = $isStudent, isWorking = $isWorking, hasExperience = $hasExperience",
  );

  // AND operator (&&)
  print("isStudent && hasExperience: ${isStudent && hasExperience}");
  print("isStudent && isWorking: ${isStudent && isWorking}");

  // OR operator (||)
  print("isStudent || isWorking: ${isStudent || isWorking}");
  print("isWorking || hasExperience: ${isWorking || hasExperience}");

  // NOT operator (!)
  print("!isStudent: ${!isStudent}");
  print("!isWorking: ${!isWorking}");

  // Complex logical expressions
  bool canApply = isStudent && hasExperience && !isWorking;
  print("canApply (student with experience, not working): $canApply");

  bool needsTraining = !hasExperience || (isStudent && !isWorking);
  print("needsTraining (no experience OR student not working): $needsTraining");
  print("");

  // ========================================
  // 5. TYPE TEST OPERATORS
  // ========================================

  print("5. TYPE TEST OPERATORS:");
  print("----------------------");

  dynamic value1 = "Hello";
  dynamic value2 = 42;
  dynamic value3 = [1, 2, 3];

  print("value1 = $value1 (${value1.runtimeType})");
  print("value2 = $value2 (${value2.runtimeType})");
  print("value3 = $value3 (${value3.runtimeType})");

  // is operator
  print("value1 is String: ${value1 is String}");
  print("value1 is int: ${value1 is int}");
  print("value2 is int: ${value2 is int}");
  print("value3 is List: ${value3 is List}");

  // is! operator (is not)
  print("value1 is! int: ${value1 is! int}");
  print("value2 is! String: ${value2 is! String}");

  // as operator (type casting)
  String stringValue = value1 as String;
  int intValue = value2 as int;
  print("value1 as String: '$stringValue'");
  print("value2 as int: $intValue");
  print("");

  // ========================================
  // 6. BITWISE OPERATORS
  // ========================================

  print("6. BITWISE OPERATORS:");
  print("--------------------");

  int bit1 = 5; // Binary: 101
  int bit2 = 3; // Binary: 011

  print("bit1 = $bit1 (binary: ${bit1.toRadixString(2)})");
  print("bit2 = $bit2 (binary: ${bit2.toRadixString(2)})");

  print(
    "bit1 & bit2 (AND): ${bit1 & bit2} (binary: ${(bit1 & bit2).toRadixString(2)})",
  );
  print(
    "bit1 | bit2 (OR): ${bit1 | bit2} (binary: ${(bit1 | bit2).toRadixString(2)})",
  );
  print(
    "bit1 ^ bit2 (XOR): ${bit1 ^ bit2} (binary: ${(bit1 ^ bit2).toRadixString(2)})",
  );
  print("~bit1 (NOT): ${~bit1} (binary: ${(~bit1).toRadixString(2)})");
  print(
    "bit1 << 1 (Left shift): ${bit1 << 1} (binary: ${(bit1 << 1).toRadixString(2)})",
  );
  print(
    "bit1 >> 1 (Right shift): ${bit1 >> 1} (binary: ${(bit1 >> 1).toRadixString(2)})",
  );
  print("");

  // ========================================
  // 7. CONDITIONAL OPERATORS
  // ========================================

  print("7. CONDITIONAL OPERATORS:");
  print("------------------------");

  // Ternary operator (condition ? value1 : value2)
  int userAge = 20;
  String status = userAge >= 18 ? "Adult" : "Minor";
  print("Age: $userAge, Status: $status");

  userAge = 15;
  status = userAge >= 18 ? "Adult" : "Minor";
  print("Age: $userAge, Status: $status");

  // Null-aware operators
  String? nullableName;
  String displayName = nullableName ?? "Unknown";
  print("nullableName = $nullableName, displayName = '$displayName'");

  nullableName = "John";
  displayName = nullableName ?? "Unknown";
  print("nullableName = $nullableName, displayName = '$displayName'");

  // Null-aware assignment
  String? userName;
  userName ??= "Default User";
  print("userName after ??=: '$userName'");

  userName ??= "Another User"; // Won't assign because userName is not null
  print("userName after second ??=: '$userName'");

  // Null-aware access
  List<String>? nullableList;
  print("nullableList?.length: ${nullableList?.length}");

  nullableList = ["apple", "banana"];
  print("nullableList?.length: ${nullableList.length}");
  print("");

  // ========================================
  // 8. CASCADE OPERATORS
  // ========================================

  print("8. CASCADE OPERATORS:");
  print("--------------------");

  // Without cascade operator
  List<String> fruits1 = [];
  fruits1.add("Apple");
  fruits1.add("Banana");
  fruits1.add("Orange");
  fruits1.sort();
  print("fruits1: $fruits1");

  // With cascade operator (..)
  List<String> fruits2 = ["Apple", "Banana", "Orange"]..sort();
  print("fruits2: $fruits2");

  // Cascade with null-aware operator (?..)
  List<String>? nullableFruits;
  nullableFruits
    ?..add("Apple")
    ..add("Banana");
  print("nullableFruits: $nullableFruits");

  nullableFruits = [];
  nullableFruits
    ..add("Apple")
    ..add("Banana");
  print("nullableFruits after assignment: $nullableFruits");
  print("");

  // ========================================
  // 9. PRACTICAL EXAMPLES FOR FLUTTER
  // ========================================

  print("9. PRACTICAL EXAMPLES FOR FLUTTER:");
  print("----------------------------------");

  // Example 1: User authentication logic
  bool isLoggedIn = true;
  bool hasValidToken = true;
  bool isAdmin = false;

  bool canAccessAdminPanel = isLoggedIn && hasValidToken && isAdmin;
  bool canAccessUserPanel = isLoggedIn && hasValidToken;

  print("User Access Control:");
  print("isLoggedIn: $isLoggedIn");
  print("hasValidToken: $hasValidToken");
  print("isAdmin: $isAdmin");
  print("canAccessAdminPanel: $canAccessAdminPanel");
  print("canAccessUserPanel: $canAccessUserPanel");

  // Example 2: Form validation
  String email = "user@example.com";
  String password = "password123";
  int age = 25;

  bool isEmailValid = email.contains("@") && email.contains(".");
  bool isPasswordValid = password.length >= 8;
  bool isAgeValid = age >= 18 && age <= 100;

  bool isFormValid = isEmailValid && isPasswordValid && isAgeValid;

  print("\nForm Validation:");
  print("Email: '$email' - Valid: $isEmailValid");
  print("Password: '${'*' * password.length}' - Valid: $isPasswordValid");
  print("Age: $age - Valid: $isAgeValid");
  print("Form Valid: $isFormValid");

  // Example 3: Shopping cart calculations
  double itemPrice = 29.99;
  int quantity = 3;
  bool isPremiumMember = true;
  double taxRate = 0.08;

  double subtotal = itemPrice * quantity;
  double discount = isPremiumMember ? subtotal * 0.10 : 0.0;
  double tax = (subtotal - discount) * taxRate;
  double total = subtotal - discount + tax;

  print("\nShopping Cart Calculation:");
  print("Item Price: \$${itemPrice.toStringAsFixed(2)}");
  print("Quantity: $quantity");
  print("Premium Member: $isPremiumMember");
  print("Subtotal: \$${subtotal.toStringAsFixed(2)}");
  print("Discount: \$${discount.toStringAsFixed(2)}");
  print("Tax: \$${tax.toStringAsFixed(2)}");
  print("Total: \$${total.toStringAsFixed(2)}");

  // Example 4: UI state management
  bool isLoading = false;
  bool hasError = false;
  String? errorMessage;
  List<String> data = ["Item 1", "Item 2", "Item 3"];

  bool shouldShowLoading = isLoading;
  bool shouldShowError = hasError && errorMessage != null;
  bool shouldShowData = !isLoading && !hasError && data.isNotEmpty;
  bool shouldShowEmptyState = !isLoading && !hasError && data.isEmpty;

  print("\nUI State Management:");
  print("isLoading: $isLoading");
  print("hasError: $hasError");
  print("errorMessage: $errorMessage");
  print("data.length: ${data.length}");
  print("shouldShowLoading: $shouldShowLoading");
  print("shouldShowError: $shouldShowError");
  print("shouldShowData: $shouldShowData");
  print("shouldShowEmptyState: $shouldShowEmptyState");
  print("");

  // ========================================
  // 10. OPERATOR PRECEDENCE
  // ========================================

  print("10. OPERATOR PRECEDENCE:");
  print("------------------------");

  // Understanding operator precedence
  int result1 = 2 + 3 * 4; // Multiplication first: 2 + (3 * 4) = 2 + 12 = 14
  int result2 = (2 + 3) * 4; // Parentheses first: (2 + 3) * 4 = 5 * 4 = 20

  print("2 + 3 * 4 = $result1 (multiplication has higher precedence)");
  print("(2 + 3) * 4 = $result2 (parentheses override precedence)");

  // Logical operator precedence
  bool logic1 = true || false && false; // && has higher precedence
  bool logic2 = (true || false) && false; // Parentheses change order

  print("true || false && false = $logic1");
  print("(true || false) && false = $logic2");

  // Complex expression
  int x1 = 5, y1 = 3, z1 = 2;
  double complex = x1 + y1 * z1 - x1 / z1; // Order: *, /, +, -
  print("$x1 + $y1 * $z1 - $x1 / $z1 = $complex");
  print("");

  // ========================================
  // 11. COMMON PITFALLS AND BEST PRACTICES
  // ========================================

  print("11. COMMON PITFALLS AND BEST PRACTICES:");
  print("--------------------------------------");

  // Pitfall 1: Integer division vs floating-point division
  print("INTEGER vs FLOATING-POINT DIVISION:");
  int int1 = 10, int2 = 3;
  double double1 = 10.0, double2 = 3.0;

  print("int1 / int2 = ${int1 / int2} (floating-point result)");
  print("int1 ~/ int2 = ${int1 ~/ int2} (integer division)");
  print("double1 / double2 = ${double1 / double2}");

  // Pitfall 2: String comparison
  print("\nSTRING COMPARISON:");
  String strA = "hello";
  String strB = "Hello";
  print("'$strA' == '$strB': ${strA == strB}");
  print(
    "'$strA'.toLowerCase() == '$strB'.toLowerCase(): ${strA.toLowerCase() == strB.toLowerCase()}",
  );

  // Pitfall 3: Null safety with operators
  print("\nNULL SAFETY WITH OPERATORS:");
  int? nullableInt;
  int nonNullableInt = 5;

  // Safe operations
  int result3 = (nullableInt ?? 0) + nonNullableInt;
  print("(nullableInt ?? 0) + nonNullableInt = $result3");

  nullableInt = 10;
  result3 = (nullableInt ?? 0) + nonNullableInt;
  print("(nullableInt ?? 0) + nonNullableInt = $result3");

  // Pitfall 4: Floating-point precision
  print("\nFLOATING-POINT PRECISION:");
  double price1 = 0.1;
  double price2 = 0.2;
  double totalPrice = price1 + price2;
  print("$price1 + $price2 = $totalPrice");
  print("Expected: 0.3, Actual: $totalPrice");
  print("Are they equal? ${totalPrice == 0.3}");

  // Best practice: Use decimal comparison with tolerance
  bool isEqual = (totalPrice - 0.3).abs() < 0.0001;
  print("Equal within tolerance: $isEqual");
  print("");

  // ========================================
  // 12. EXERCISES FOR STUDENTS
  // ========================================

  print("12. EXERCISES FOR STUDENTS:");
  print("---------------------------");

  print("Exercise 1: Calculator");
  // TODO: Create a simple calculator that performs basic operations

  print("Exercise 2: Grade Calculator");
  // TODO: Calculate final grade based on assignments, exams, and participation

  print("Exercise 3: Password Strength Checker");
  // TODO: Check if password meets security requirements

  print("Exercise 4: Shopping Cart with Discounts");
  // TODO: Calculate total with various discount scenarios

  print("Exercise 5: User Access Control");
  // TODO: Determine user permissions based on role and status

  print("\n=== END OF LESSON ===");
}

// ========================================
// STUDENT EXERCISES
// ========================================

// Exercise 1: Simple Calculator
void calculatorExercise() {
  // TODO: Create a calculator that can perform:
  // - Addition, subtraction, multiplication, division
  // - Handle division by zero
  // - Support both integer and floating-point numbers

  // Your code here:
}

// Exercise 2: Grade Calculator
void gradeCalculator() {
  // TODO: Calculate final grade based on:
  // - Assignments (40% of total)
  // - Midterm exam (25% of total)
  // - Final exam (35% of total)
  // - Apply letter grade conversion

  // Your code here:
}

// Exercise 3: Password Strength Checker
void passwordStrengthChecker() {
  // TODO: Check password strength based on:
  // - Length (minimum 8 characters)
  // - Contains uppercase letter
  // - Contains lowercase letter
  // - Contains number
  // - Contains special character

  // Your code here:
}

// Exercise 4: Shopping Cart with Discounts
void shoppingCartWithDiscounts() {
  // TODO: Calculate total with:
  // - Multiple items with different prices
  // - Quantity discounts
  // - Member discounts
  // - Tax calculation
  // - Free shipping threshold

  // Your code here:
}

// Exercise 5: User Access Control
void userAccessControl() {
  // TODO: Determine user permissions based on:
  // - User role (admin, moderator, user)
  // - Account status (active, suspended, pending)
  // - Subscription level (free, premium, enterprise)
  // - Age verification (for age-restricted content)

  // Your code here:
}
