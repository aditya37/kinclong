import 'package:flutter/material.dart';
import 'package:kinclong/pages/login/widgets/form_login.dart';
import 'package:kinclong/pages/login/widgets/header_logo.dart';
import 'package:kinclong/pages/register/register.dart';
import 'package:kinclong/utils/navigate.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void naviagateToRegisterPage(BuildContext ctx) {
    // add delay for show overlay in button
    const duration = Duration(milliseconds: 350);
    NavigateUtil.navigateDelay(
      ctx,
      duration,
      MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      ),
    );
  }

  void someVoid() {}

  @override
  Widget build(BuildContext context) {
    // use scaffold for perform move page
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: ListView(
          children: [
            const HeaderLogoWidget(),
            FormLoginWidget(
              onPressedLogin: () => {debugPrint("oke")},
              onPressedRegister: () => naviagateToRegisterPage(context),
            ),
          ],
        ),
      ),
    );
  }
}
