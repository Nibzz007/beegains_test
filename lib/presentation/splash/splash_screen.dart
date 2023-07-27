import 'package:beegains_task/core/colors.dart';
import 'package:beegains_task/infrastructure/login/login_implementation.dart';
import 'package:beegains_task/presentation/enquiry%20list/enquiry_list_screen.dart';
import 'package:beegains_task/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    LoginAuth.clearToken();
  }

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

  void goToHome(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString(LoginAuth.tokenKey).toString();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        token == "null"
            ? Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              )
            : Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => EnquiryListScreen(),
                ));
      },
    );
  }
}
