import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPickupSummaryWidget extends StatelessWidget {
  final String? courierName;
  final String? startPrice;
  final String? endPrice;
  final String? pickupTime;
  final String? pickupNote;

  const CardPickupSummaryWidget({
    super.key,
    this.courierName = "",
    this.startPrice = "",
    this.endPrice = "",
    this.pickupTime = "",
    this.pickupNote = "-",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(left: 9, top: 7, bottom: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ayo, Cek dulu request pickup mu",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(10),
            Text(
              '$courierName (Rp $startPrice - $endPrice)',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "estimasi sampai ke lokasi kamu jam $pickupTime",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(10),
            Text(
              "Catatan",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$pickupNote",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
