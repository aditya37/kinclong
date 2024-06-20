import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinclong/widgets/radio_button.dart';

class CourierItemWidget extends StatelessWidget {
  final String courierName;
  final String startPrice;
  final String endPrice;
  final String estimateTime;

  const CourierItemWidget({
    super.key,
    this.courierName = "",
    this.startPrice = "0",
    this.endPrice = "0",
    this.estimateTime = "00.00 - 12.00",
  });

  static int id = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: RadioButtonWidget(groupValue: id, value: 0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$courierName (Rp $startPrice - $endPrice)',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(2),
              Text(
                "Estimasi sampai jam",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Gap(4),
              Text(
                estimateTime,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
