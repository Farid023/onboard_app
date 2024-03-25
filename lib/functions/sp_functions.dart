import 'package:flutter/material.dart';
import 'package:onboard_app/ui/login/login_screen.dart';
import 'package:onboard_app/ui/welcome/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefFunctions {
  late SharedPreferences _preferences;

  Future<void> _initSharedPreferences() async {
    _preferences = await SharedPreferences.getInstance();
  }

  void setOnboardCompleted(context) async {
    await _initSharedPreferences();
    await _preferences.setBool('onboardCompleted', true);
  }

  Future<bool> isOnboardCompleted() async {
    await _initSharedPreferences();
    return _preferences.getBool('onboardCompleted') ?? false;
  }
}
