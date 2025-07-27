import 'package:flutter/material.dart';

void main() {
  runApp(const VariablesDemoApp());
}

class VariablesDemoApp extends StatelessWidget {
  const VariablesDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Variables & Data Types Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const VariablesDemoScreen(),
    );
  }
}

class VariablesDemoScreen extends StatefulWidget {
  const VariablesDemoScreen({super.key});

  @override
  State<VariablesDemoScreen> createState() => _VariablesDemoScreenState();
}

class _VariablesDemoScreenState extends State<VariablesDemoScreen> {
  // Demo variables - these will be displayed in the UI
  String userName = "John Doe";
  int userAge = 25;
  double userHeight = 1.75;
  bool isStudent = true;

  List<String> hobbies = ["Reading", "Gaming", "Cooking"];
  Map<String, dynamic> userInfo = {
    "email": "john@example.com",
    "city": "New York",
    "occupation": "Developer",
  };

  // Variables that can be modified by the UI
  String currentName = "Alice";
  int currentAge = 30;
  double currentHeight = 1.65;
  bool currentIsStudent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Variables & Data Types Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Basic Data Types Section
            _buildSection(
              title: "1. Basic Data Types",
              children: [
                _buildVariableCard(
                  "String",
                  "userName",
                  userName,
                  Colors.green,
                ),
                _buildVariableCard(
                  "int",
                  "userAge",
                  userAge.toString(),
                  Colors.blue,
                ),
                _buildVariableCard(
                  "double",
                  "userHeight",
                  "${userHeight}m",
                  Colors.orange,
                ),
                _buildVariableCard(
                  "bool",
                  "isStudent",
                  isStudent.toString(),
                  Colors.purple,
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Collection Data Types Section
            _buildSection(
              title: "2. Collection Data Types",
              children: [
                _buildVariableCard(
                  "List<String>",
                  "hobbies",
                  hobbies.toString(),
                  Colors.teal,
                ),
                _buildVariableCard(
                  "Map<String, dynamic>",
                  "userInfo",
                  userInfo.toString(),
                  Colors.indigo,
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Interactive Section
            _buildSection(
              title: "3. Interactive Variables (Try Changing These!)",
              children: [
                _buildEditableVariableCard(
                  "String",
                  "currentName",
                  currentName,
                  (value) {
                    setState(() {
                      currentName = value;
                    });
                  },
                  Colors.green,
                ),
                _buildEditableVariableCard(
                  "int",
                  "currentAge",
                  currentAge.toString(),
                  (value) {
                    setState(() {
                      currentAge = int.tryParse(value) ?? currentAge;
                    });
                  },
                  Colors.blue,
                ),
                _buildEditableVariableCard(
                  "double",
                  "currentHeight",
                  currentHeight.toString(),
                  (value) {
                    setState(() {
                      currentHeight = double.tryParse(value) ?? currentHeight;
                    });
                  },
                  Colors.orange,
                ),
                _buildEditableVariableCard(
                  "bool",
                  "currentIsStudent",
                  currentIsStudent.toString(),
                  (value) {
                    setState(() {
                      currentIsStudent = value.toLowerCase() == 'true';
                    });
                  },
                  Colors.purple,
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Type Information Section
            _buildSection(
              title: "4. Type Information",
              children: [
                _buildTypeInfoCard("userName", userName, String),
                _buildTypeInfoCard("userAge", userAge, int),
                _buildTypeInfoCard("userHeight", userHeight, double),
                _buildTypeInfoCard("isStudent", isStudent, bool),
                _buildTypeInfoCard("hobbies", hobbies, List),
                _buildTypeInfoCard("userInfo", userInfo, Map),
              ],
            ),

            const SizedBox(height: 20),

            // Practical Example Section
            _buildSection(
              title: "5. Practical Example: User Profile",
              children: [_buildUserProfileCard()],
            ),

            const SizedBox(height: 20),

            // Tips Section
            _buildSection(
              title: "6. Key Points to Remember",
              children: [
                _buildTipCard(
                  "var",
                  "Dart infers the type automatically",
                  Colors.blue,
                ),
                _buildTipCard(
                  "final",
                  "Value cannot be changed after assignment",
                  Colors.orange,
                ),
                _buildTipCard("const", "Compile-time constant", Colors.green),
                _buildTipCard(
                  "String interpolation",
                  "Use \${} for embedding expressions",
                  Colors.purple,
                ),
                _buildTipCard(
                  "Null safety",
                  "Use ? for nullable types",
                  Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 10),
        ...children,
      ],
    );
  }

  Widget _buildVariableCard(
    String type,
    String name,
    String value,
    Color color,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                type,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    value,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEditableVariableCard(
    String type,
    String name,
    String value,
    Function(String) onChanged,
    Color color,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                type,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  TextField(
                    controller: TextEditingController(text: value),
                    style: const TextStyle(fontSize: 12),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                    ),
                    onChanged: onChanged,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTypeInfoCard(String name, dynamic value, Type expectedType) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Value: $value",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    "Type: ${value.runtimeType}",
                    style: const TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                  Text(
                    "Expected: $expectedType",
                    style: const TextStyle(color: Colors.green, fontSize: 12),
                  ),
                ],
              ),
            ),
            Icon(
              value.runtimeType == expectedType
                  ? Icons.check_circle
                  : Icons.error,
              color:
                  value.runtimeType == expectedType ? Colors.green : Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserProfileCard() {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "User Profile Example",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            _buildProfileRow("Name", userName),
            _buildProfileRow("Age", "$userAge years"),
            _buildProfileRow("Height", "${userHeight}m"),
            _buildProfileRow("Student", isStudent ? "Yes" : "No"),
            _buildProfileRow("Hobbies", hobbies.join(", ")),
            _buildProfileRow("Email", userInfo["email"]),
            _buildProfileRow("City", userInfo["city"]),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              "$label:",
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTipCard(String concept, String description, Color color) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                concept,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(description, style: const TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
