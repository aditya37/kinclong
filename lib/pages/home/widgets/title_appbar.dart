import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleAppBarWidget extends StatefulWidget {
  final String? username;

  const TitleAppBarWidget({super.key, this.username = ""});

  @override
  State<TitleAppBarWidget> createState() {
    return _TitleAppBarWidgetState();
  }
}

class _TitleAppBarWidgetState extends State<TitleAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hallo,",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(10),
        Text(
          widget.username!,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
