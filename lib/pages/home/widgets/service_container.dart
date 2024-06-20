import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinclong/pages/home/models/service.dart';

class ServiceContainerWidget extends StatelessWidget {
  final Function(ServiceModel v, BuildContext context) onSelectService;

  const ServiceContainerWidget({super.key, required this.onSelectService});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Layanan",
          style: GoogleFonts.righteous(
            fontWeight: FontWeight.w300,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        const Gap(10),
        SizedBox(
          height: 175,
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            children: [
              ...ServiceModel.allServices.map(
                (v) => Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //  service icon
                      _iconService(v, context),
                      const Gap(10),
                      _titleService(v)
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  // _serviceContainer
  Container _iconService(ServiceModel v, BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
          color: const Color(0xff38BBDA),
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: IconButton(
          onPressed: () => onSelectService(v, context),
          icon: SvgPicture.asset(
            'assets/svg/${v.iconPath}',
            color: const Color(0xffFFFFFF),
            width: 30,
            height: 30,
          ),
        ),
      ),
    );
  }

  //   _titleService
  Align _titleService(ServiceModel v) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        v.serviceName!,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.plusJakartaSans(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
