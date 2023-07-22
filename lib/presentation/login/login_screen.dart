import 'package:beegains_task/core/colors.dart';
import 'package:beegains_task/core/size.dart';
import 'package:beegains_task/presentation/enquiry%20list/enquiry_list_screen.dart';
import 'package:beegains_task/presentation/widgets/elevated_button_widget.dart';
import 'package:beegains_task/presentation/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight100,
              Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: width * 0.1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight80,
              TextFormWidget(
                textEditingController: usernameController,
                keyboardType: TextInputType.text,
                cursorColor: kBlack,
                textAlign: TextAlign.left,
                labelText: 'E-mail Address',
              ),
              kHeight20,
              TextFormWidget(
                textEditingController: passwordController,
                keyboardType: TextInputType.text,
                cursorColor: kBlack,
                textAlign: TextAlign.left,
                obscureText: true,
                labelText: 'Password',
              ),
              kHeight50,
              SizedBox(
                height: height * 0.055,
                width: double.infinity,
                child: ElevatedButtonWidget(
                  onPressed: () {
                    
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EnquiryListScreen(),
                      ),
                    );
                  },
                  text: 'Login',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
