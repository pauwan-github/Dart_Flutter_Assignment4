import 'dart:io';

void main() {
  // Demonstrate string manipulation
  print('Enter a string:');
  String input = stdin.readLineSync() ?? '';

  // String manipulations
  String concatenated = input + " is a great input!";
  String interpolated = 'Your input was: $input';
  String substring = input.length > 5 ? input.substring(0, 5) : input;
  String upperCase = input.toUpperCase();
  String lowerCase = input.toLowerCase();
  String reversed = input.split('').reversed.join('');
  int length = input.length;

  // Print results
  print('Concatenated: $concatenated');
  print('Interpolated: $interpolated');
  print('Substring (first 5 chars): $substring');
  print('Uppercase: $upperCase');
  print('Lowercase: $lowerCase');
  print('Reversed: $reversed');
  print('Length: $length');

  // Demonstrate collections
  List<String> stringList = [];
  Set<String> stringSet = {};
  Map<String, String> stringMap = {};

  // Add items
  stringList.add(input);
  stringSet.add(input);
  stringMap['original'] = input;

  // Remove an item
  stringList.removeWhere((item) => item == '');

  // Iterating through collections
  print('List contents:');
  for (var item in stringList) {
    print(item);
  }

  print('Set contents:');
  for (var item in stringSet) {
    print(item);
  }

  print('Map contents:');
  stringMap.forEach((key, value) {
    print('$key: $value');
  });

  // File handling
  String logFileName = 'log.txt';
  String logEntry = '$input | ${DateTime.now()}';

  // Write to file
  File(logFileName).writeAsStringSync(logEntry + '\n', mode: FileMode.append);
  print('Logged entry: $logEntry');

  // Read from file
  try {
    String content = File(logFileName).readAsStringSync();
    print('Current log content:\n$content');
  } catch (e) {
    print('Error reading log file: $e');
  }

  // Date manipulation example
  DateTime now = DateTime.now();
  DateTime futureDate = now.add(Duration(days: 7));
  DateTime pastDate = now.subtract(Duration(days: 7));

  print('Current Date: $now');
  print('Future Date (7 days later): $futureDate');
  print('Past Date (7 days earlier): $pastDate');
}
