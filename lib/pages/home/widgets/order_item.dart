import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // _shadowCardItem
    BoxShadow shadowCardItem() {
      return const BoxShadow(
        blurRadius: 4,
        offset: Offset(0.0, 4),
        color: Color.fromRGBO(20, 115, 233, 45 / 100),
      );
    }

    // iconOrderType
    Padding iconOrderType() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SizedBox(
          width: 50,
          height: 50,
          child: Image.asset("assets/image/ic_on_delivery.png"),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          shadowCardItem(),
        ],
      ),
      child: Row(
        children: [
          iconOrderType(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  "Order No: CK230524",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  "Jenis: Cuci Karpet",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  "Lagi Di Proses",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    color: const Color(0xff27AE60),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4)
              ],
            ),
          )
        ],
      ),
    );
  }
}
