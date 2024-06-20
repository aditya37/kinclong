import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kinclong/pages/login/login.dart';
import 'package:kinclong/pages/otp/otp.dart';
import 'package:kinclong/pages/register/widgets/button_register.dart';
import 'package:kinclong/pages/register/widgets/form_register.dart';
import 'package:kinclong/pages/register/widgets/header_register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  // navigateToLoginPage
  void navigateToLoginPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  // for testing only
  void navigateToOTPPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const OTPPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageLogo(),
                const HeaderRegisterWidget(),
                const Gap(10),
                const FormRegisterWidget(),
                const Gap(35),
                ButtonRegisterWidget(
                  onPressedCancel: () {
                    navigateToLoginPage(context);
                  },
                  onPressedRegister: () => navigateToOTPPage(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding imageLogo() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: Image.asset(
        "assets/image/register_logo.png",
        width: 260,
        height: 164,
      ),
    );
  }
}
