import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kinclong/pages/navigation/navigation.dart';
import 'package:kinclong/pages/otp/widgets/input_otp_container.dart';
import 'package:kinclong/pages/otp/widgets/textheader_otp.dart';
import 'package:kinclong/pages/register/register.dart';
import 'package:kinclong/widgets/pininput.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

  // navigateToLoginPage
  void navigateToRegisterPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const RegisterPage()),
    );
  }

  // only for testing
  void navigateToHomePage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const Navigation()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0x00FFFFFF),
        width: double.infinity,
        child: ListView(
          children: [
            imageLogo(),
            const Gap(32),
            const TextHeaderOTPWidget(),
            const Gap(27),
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 0, top: 0),
              child: PinputWidget(
                pinLength: 4,
                borderRadius: BorderRadius.circular(50),
                onCompleted: (s) => {debugPrint(s)},
              ),
            ),
            InputOTPContainer(
              onPressedCancel: () => {navigateToRegisterPage(context)},
              onPressedResend: () => {debugPrint("On Resend")},
              onPressSubmit: () => {navigateToHomePage(context)},
            ),
          ],
        ),
      ),
    );
  }

  Padding imageLogo() {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 0, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/image/otp_logo.png",
            height: 184,
            width: 260,
          )
        ],
      ),
    );
  }
}
