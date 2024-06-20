import 'package:flutter/material.dart';
import 'package:kinclong/widgets/button.dart';

class ButtonRegisterWidget extends StatelessWidget {
  final VoidCallback? onPressedCancel;
  final VoidCallback? onPressedRegister;

  const ButtonRegisterWidget({
    super.key,
    required this.onPressedCancel,
    required this.onPressedRegister,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonWidget(
            buttonTitle: "Register",
            onPressed: onPressedRegister,
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
