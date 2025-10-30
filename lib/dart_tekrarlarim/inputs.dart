import 'dart:io';

class Inputs {
  String readString(String label) {
    stdout.write("$label: ");
    return stdin.readLineSync()!;
  }

  int readInt(String label) {
    stdout.write("$label: ");
    return int.parse(stdin.readLineSync()!);
  }

  double readDouble(String label) {
    stdout.write("$label: ");
    return double.parse(stdin.readLineSync()!);
  }
}
