import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinputWidget extends StatelessWidget {
  final int pinLength;
  final BorderRadius? borderRadius;
  final Function(String) onCompleted;
  final Function(String)? onSubmited;

  const PinputWidget({
    super.key,
    this.pinLength = 4,
    this.borderRadius,
    required this.onCompleted,
    this.onSubmited,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: pinLength,
      showCursor: true,
      closeKeyboardWhenCompleted: true,
      onCompleted: onCompleted,
      onSubmitted: onSubmited,
      defaultPinTheme: PinTheme(
        width: 56,
        height: 56,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(39, 174, 96, 100),
          ),
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
