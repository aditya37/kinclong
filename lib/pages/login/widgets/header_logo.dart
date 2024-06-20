import 'package:flutter/material.dart';

class HeaderLogoWidget extends StatelessWidget {
  const HeaderLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 31, right: 28),
      child: Image.asset("assets/image/Logo.png"),
    );
  }
}
