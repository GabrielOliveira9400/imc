import 'package:flutter/material.dart';
import 'package:imc/ui/android/material-app.dart';
import 'package:imc/ui/ios/cupertino-app.dart';
import 'dart:io' show Platform;

void main() {
  runApp(Platform.isIOS ? const MyCupertinoApp() : const MyMaterialApp());
}