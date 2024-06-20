import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinclong/widgets/radio_button.dart';

class ItemModalGetCourierWidget extends StatelessWidget {
  const ItemModalGetCourierWidget({super.key});

  final _val = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RadioButtonWidget(
          groupValue: _val,
          value: 0,
        ),
        const Gap(10),
        Text(
          "JNE (Rp 13.000 - 14.000)",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
