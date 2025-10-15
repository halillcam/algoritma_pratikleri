import 'dart:io';

class RoutineMethods {
  Map<String, String> routines = {};

  String readString(String label) {
    stdout.write("$label: ");
    return stdin.readLineSync()!;
  }

  void addRoutine() {
    String routineName = readString("Routin name: ");
    String routineTime = readString("Routine time (example 08:00): ");

    // Boş giriş kontrolü
    if (routineName.isNotEmpty && routineTime.isNotEmpty) {
      routines[routineTime] = routineName; // map'e ekleme
      print("\n Successful: $routineTime - $routineName");
    } else {
      print(" Please add your routine name and time!");
    }
  }

  void showRoutines() {
    if (routines.isEmpty) {
      print("\nNo routines have been added yet.\n");
      return;
    }

    print("\n--- Your Daily Routine ---\n");
    routines.forEach((time, name) {
      print("$time - $name");
    });
  }

  void userInformation() {
    print("--- Daily Routine --- \n");
    print("1 - Add Routine ");
    print("2 - Show Routines");
    print("99 - exit the program");
  }
}
