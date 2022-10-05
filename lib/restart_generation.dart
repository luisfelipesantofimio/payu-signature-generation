import 'dart:io';

import 'package:encriptation/encript.dart';
import 'package:encriptation/new_reference_input.dart';
import 'package:encriptation/new_user_input.dart';
import 'package:encriptation/utils/screen.dart';

void restartGeneration() {
  print("\x1B[33mSelect an option:\x1B[0m");
  print("""
1 - Generate new signature.
2 - Update reference code in signature.
3 - Print current signature.
4 - End script.""");
  String? input = stdin.readLineSync();
  if (input == "1" || input == "2" || input == "3" || input == "4") {
    if (input == "1") {
      cleanScreen();
      getUserInput();
    } else if (input == "2") {
      cleanScreen();
      newReferenceInput();
    } else if (input == "3") {
      print("Your PayU signature: \x1B[36m$currentSignature\x1B[0m");
      print("Enter to continue...");
      stdin.readLineSync();
      cleanScreen();
      restartGeneration();
    } else if (input == "4") {
      cleanScreen();
      exit(0);
    }
  } else {
    print("\x1B[31m¡Ingresa una opción válida!\x1B[0m");
    stdin.readLineSync();
    cleanScreen();
    restartGeneration();
  }
}
