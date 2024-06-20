import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinclong/widgets/button.dart';

class SwipperWidget extends StatefulWidget {
  const SwipperWidget({super.key});

  @override
  State<SwipperWidget> createState() {
    return _SwipperWidgetState();
  }
}

class _SwipperWidgetState extends State<SwipperWidget> {
  final List<String> _childern = [
    "https://firebasestorage.googleapis.com/v0/b/device-service-1029d.appspot.com/o/assets%2Fads1.png?alt=media&token=800e05da-ea8c-4720-b800-5e6571bad4a6"
        "https://firebasestorage.googleapis.com/v0/b/device-service-1029d.appspot.com/o/assets%2Fads1.png?alt=media&token=800e05da-ea8c-4720-b800-5e6571bad4a6"
        "https://firebasestorage.googleapis.com/v0/b/device-service-1029d.appspot.com/o/assets%2Fads1.png?alt=media&token=800e05da-ea8c-4720-b800-5e6571bad4a6"
        "https://firebasestorage.googleapis.com/v0/b/device-service-1029d.appspot.com/o/assets%2Fads1.png?alt=media&token=800e05da-ea8c-4720-b800-5e6571bad4a6"
  ];

  // _itemBuilder
  Widget _itemBuilder(BuildContext context, int index) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Image.network(
            _childern[index],
            fit: BoxFit.cover,
            height: double.maxFinite,
            width: double.maxFinite,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wih, Ada Promo Cuci Sepatu",
                style: GoogleFonts.righteous(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Text(
                "Buruan Order Sebelum  Ketinggalan",
                style: GoogleFonts.righteous(
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
              const Gap(19),
              ButtonWidget(
                buttonTitle: "Order Now",
                onPressed: () => {},
                width: 114,
                height: 40,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Swiper(
        autoplay: true,
        autoplayDelay: 10000,
        viewportFraction: 0.9,
        scale: 0.8,
        itemCount: _childern.length,
        itemBuilder: _itemBuilder,
      ),
    );
  }
}
