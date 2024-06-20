import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPickupAddressWidget extends StatelessWidget {
  const CardPickupAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(left: 9, top: 7),
        child: Stack(
          children: [
            AddressContent(),
            ButtonGetMoreAddress(),
          ],
        ),
      ),
    );
  }

  //AddressContent
  Column AddressContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Alamat Pengambilan",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(Icons.pin_drop, color: Color(0xff0FA958)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 2),
              child: Text(
                "Rumah. Mamat Yuhu",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        const Gap(5),
        Text(
          "Tegal Parang Selatan RT 02/01",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  // ButtonGetMoreAddress
  Padding ButtonGetMoreAddress() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Align(
        alignment: Alignment.centerRight,
        child: IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}
