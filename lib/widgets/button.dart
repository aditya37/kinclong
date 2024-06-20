import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String? buttonType;
  final String buttonTitle;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  const ButtonWidget({
    super.key,
    this.buttonType = "Primary",
    required this.buttonTitle,
    this.onPressed,
    this.width = 133,
    this.height = 40,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: buttonType == "Primary"
            ? stylePrimaryButton()
            : styleSecondaryButton(),
        onPressed: onPressed,
        child: Text(
          buttonTitle,
          style: GoogleFonts.plusJakartaSans(
            color: buttonType == "Primary"
                ? Colors.white
                : const Color(0xff27AE60),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // stylePrimaryButton
  ButtonStyle stylePrimaryButton() => ButtonStyle(
        overlayColor: WidgetStateProperty.all(
          const Color(0xff99D6EA),
        ),
        side: WidgetStateProperty.all(
          const BorderSide(
            color: Color(0xff27AE60),
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(
          const Color(0xff27AE60),
        ),
      );

  // styleSecondaryButton
  ButtonStyle styleSecondaryButton() => ButtonStyle(
        overlayColor: WidgetStateProperty.all(
          const Color(0xff99D6EA),
        ),
        side: WidgetStateProperty.all(
          const BorderSide(
            color: Color(0xff27AE60),
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      );
}
