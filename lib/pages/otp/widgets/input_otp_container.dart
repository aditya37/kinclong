import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinclong/widgets/button.dart';

class InputOTPContainer extends StatelessWidget {
  final VoidCallback? onPressSubmit;
  final VoidCallback? onPressedCancel;
  final VoidCallback? onPressedResend;

  const InputOTPContainer({
    super.key,
    this.onPressSubmit,
    this.onPressedCancel,
    this.onPressedResend,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(25),
        _textContent(
          "00:00",
          16,
          FontWeight.bold,
          const Color(0xff000000),
        ),
        const Gap(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _textContent(
              "Tidak Menerima OTP ?",
              16,
              FontWeight.w500,
              const Color(0xff000000),
            ),
            TextButton(
              onPressed: onPressedResend,
              child: _textContent(
                "Kirim Ulang OTP",
                16,
                FontWeight.bold,
                const Color(0xffE9890A),
              ),
            ),
          ],
        ),
        _button(onPressSubmit, onPressedCancel)
      ],
    );
  }

  Text _textContent(
      String value, double fontSize, FontWeight weight, Color color) {
    return Text(
      value,
      style: GoogleFonts.plusJakartaSans(
        color: color,
        fontSize: fontSize,
        fontWeight: weight,
      ),
    );
  }

  Padding _button(VoidCallback? onSubmit, VoidCallback? onPressedCancel) {
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 28, top: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonWidget(
            buttonTitle: "Submit",
            onPressed: onSubmit,
          ),
          ButtonWidget(
            buttonTitle: "Batal",
            buttonType: "Secondary",
            onPressed: onPressedCancel,
          ),
        ],
      ),
    );
  }
}
