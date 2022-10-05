import 'dart:convert';

import 'package:crypto/crypto.dart';

String currentSignature = "";

encryptSomething(
  String apiKey,
  String merchantId,
  String referenceCode,
  String price,
) {
  var bytes = utf8.encode("$apiKey~$merchantId~$referenceCode~$price~COP");
  var convertion = md5.convert(bytes).toString();
  currentSignature = convertion;
  print("Your PayU signature: \x1B[36m$convertion\x1B[0m");
}
