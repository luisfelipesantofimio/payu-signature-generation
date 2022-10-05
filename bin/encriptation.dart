import 'dart:io';

import 'package:encriptation/new_user_input.dart';
import 'package:encriptation/utils/screen.dart';

void main() {
  print("""\n
🎉 Welcome to PayU signature generation script! 🎉
  This script was created for making the PayU api integration process much easier
  and is based on the official documentation: https://developers.payulatam.com/latam/en/docs/integrations.html#authentication-signature.
  Currently available for Colombian payment api.
  </> with 🧡 at Imagine Apps.
  v0.1 10/05/2022
  """);
  print("Enter to continue...");
  stdin.readLineSync();
  cleanScreen();
  getUserInput();
}
