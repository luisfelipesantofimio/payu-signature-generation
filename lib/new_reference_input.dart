import 'dart:io';

import 'package:encriptation/encript.dart';
import 'package:encriptation/new_user_input.dart';
import 'package:encriptation/restart_generation.dart';
import 'package:encriptation/utils/screen.dart';

void newReferenceInput() {
  print("Enter your unique \x1B[32mreference code\x1B[0m:");
  String? input = stdin.readLineSync();
  referenceInput = input;
  encryptSomething(newApikey!, merchantId!, referenceInput!, price!);
  print("Enter to continue...");
  stdin.readLineSync();
  cleanScreen();
  restartGeneration();
}
