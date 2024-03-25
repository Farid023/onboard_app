

import 'package:flutter/material.dart';



extension NavigationExtensions on BuildContext {
  void pushReplacement(Widget page) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (_) => page),
    );
  }
}