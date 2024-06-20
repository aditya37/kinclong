import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPickupCourierWidget extends StatelessWidget {
  final List<Widget> child;
  final VoidCallback onGetMoreCourier;

  const CardPickupCourierWidget({
    super.key,
    required this.child,
    required this.onGetMoreCourier,
  });

  // CardTitle
  Column CardTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pilih Kurir Pengambilan",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(4),
        Text(
          "Setiap kurir yang anda pilih,memiliki tarif yang\nberbeda.",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  // CardCourierItem
  Column CardCourierItem(List<Widget> child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...child.map(
          (v) => Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: v,
          ),
        ),
      ],
    );
  }

  // ButtonGetMoreCourier
  Padding ButtonGetMoreCourier(VoidCallback? onPress) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 117, horizontal: 30),
      child: Align(
        alignment: Alignment.centerRight,
        child: IconButton(
          onPressed: onPress,
          icon: const Icon(Icons.chevron_right),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(left: 9, top: 7),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // courier content
                CardTitle(),
                const Gap(10),
                CardCourierItem(child),
              ],
            ),
            // ButtonGetMoreCourier
            ButtonGetMoreCourier(onGetMoreCourier)
          ],
        ),
      ),
    );
  }
}
