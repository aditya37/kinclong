import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  final dynamic groupValue;
  final dynamic value;

  const RadioButtonWidget({
    super.key,
    required this.groupValue,
    required this.value,
  });

  @override
  State<RadioButtonWidget> createState() {
    return _RadioButtonWidgetState();
  }
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: Radio(
        value: widget.value,
        groupValue: widget.groupValue,
        activeColor: const Color(0xff0A7AFF),
        toggleable: true,
        onChanged: (v) => {print(v)},
      ),
    );
  }
}
