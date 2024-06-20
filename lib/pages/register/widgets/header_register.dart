import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderRegisterWidget extends StatelessWidget {
  const HeaderRegisterWidget({super.key});

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
            "Registrasi",
            style: GoogleFonts.plusJakartaSans(
              color: const Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(2),
          Text(
            "Selamat Datang Kembali",
            style: GoogleFonts.plusJakartaSans(
              color: const Color(0xff000000),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(1),
          Text(
            "Silahkan Registrasi Dan Nikmati Layanan Kami",
            style: GoogleFonts.plusJakartaSans(
              color: const Color(0xff000000),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
