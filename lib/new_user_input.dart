import 'dart:io';

import 'package:encriptation/restart_generation.dart';
import 'package:encriptation/utils/screen.dart';

import 'encript.dart';

String? newApikey = "";
String? merchantId = "";
String? referenceInput = "";
String? price = "";

void getUserInput() {
  print("Enter your account \x1B[32mapi key\x1B[0m:");
  newApikey = stdin.readLineSync();
  print("Enter your account \x1B[32mMerchant ID\x1B[0m:");

  merchantId = stdin.readLineSync();
  print("Enter your unique \x1B[32mreference code\x1B[0m:");
  referenceInput = stdin.readLineSync();
  print("Enter the current \x1B[32mprice\x1B[32m as \x1B[32minteger\x1B[0m:");
  price = stdin.readLineSync();

  encryptSomething(newApikey!, merchantId!, referenceInput!, price!);
  print("Enter to continue...");
  stdin.readLineSync();
  cleanScreen();
  restartGeneration();
}
