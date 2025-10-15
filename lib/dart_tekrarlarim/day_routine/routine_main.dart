import 'dart:io';

import 'package:dart_application_1/dart_tekrarlarim/day_routine/routine_methods.dart';

void main(List<String> args) {
  RoutineMethods routine = RoutineMethods();

  int readInt(String label) {
    stdout.write("$label: ");
    return int.parse(stdin.readLineSync()!);
  }

  while (true) {
    routine.userInformation();
    int choice = readInt("Please Select");

    switch (choice) {
      case 1:
        routine.addRoutine();
        break;

      case 2:
        routine.showRoutines();
        break;

      case 99:
        print("Exit the program...");
        return;
      default:
        print("Wrong choice");
    }
  }
}
