import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/button.dart';

class FormLoginWidget extends StatelessWidget {
  final VoidCallback? onPressedLogin;
  final VoidCallback? onPressedRegister;

  const FormLoginWidget({
    super.key,
    required this.onPressedLogin,
    required this.onPressedRegister,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 21,
        right: 28,
        top: 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: GoogleFonts.plusJakartaSans(
              color: const Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Selamat Datang Kembali",
            style: GoogleFonts.plusJakartaSans(
              color: const Color(0xff000000),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(20),
          const TextField(
            decoration: InputDecoration(
              hintText: "Username",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              label: Text("Username"),
              filled: false,
              suffixIcon: Icon(Icons.person),
            ),
          ),
          const Gap(26),
          const TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: "Password",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              label: Text("Password"),
              filled: false,
              suffixIcon: Icon(Icons.lock),
            ),
          ),
          const Gap(17),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () => {},
              child: Text(
                "Lupa Password ?",
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(buttonTitle: "Login", onPressed: onPressedLogin),
              ButtonWidget(
                buttonTitle: "Register",
                buttonType: "Secondary",
                onPressed: onPressedRegister,
              ),
            ],
          )
        ],
      ),
    );
  }
}
