import 'package:beegains_task/core/colors.dart';
import 'package:beegains_task/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    goToHome(context);
    return const Scaffold(
      backgroundColor: kWhite,
      body: Center(
          child: SizedBox(
        height: 130,
        width: 130,
        child: Icon(Icons.login),
      )),
    );
  }

  void goToHome(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
    );
  }
}
