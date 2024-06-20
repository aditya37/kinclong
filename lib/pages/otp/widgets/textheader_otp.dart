import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHeaderOTPWidget extends StatelessWidget {
  const TextHeaderOTPWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _headerText("OTP Verification", 25, FontWeight.w400),
          const Gap(10),
          _headerText(
            "Kode OTP akan dikirim ke nomor berikut",
            15,
            FontWeight.w500,
          ),
          const Gap(13),
          _headerText("+62-81249629695", 20, FontWeight.bold),
        ],
      ),
    );
  }

  Text _headerText(String text, double size, FontWeight weight) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
        color: const Color(0xff000000),
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
