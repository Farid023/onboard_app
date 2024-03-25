import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboard_app/constants/app_colors.dart';
import 'package:onboard_app/functions/sp_functions.dart';
import 'package:onboard_app/ui/splash/splash_screen.dart';
import 'package:onboard_app/ui/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? isOnboardCompleted;

  @override
  void initState() {
    super.initState();
    getOnboardCompleted();
  }

  void getOnboardCompleted() async {
    isOnboardCompleted = await SharedPrefFunctions().isOnboardCompleted();
    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
            useMaterial3: true,
            fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen()


        /*isOnboardCompleted == true
          ? const LoginScreen()
          : const SplashScreen(),*/
        );
  }
}
