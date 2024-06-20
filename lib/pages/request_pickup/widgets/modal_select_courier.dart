import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalSelectCourierWidget extends StatelessWidget {
  final VoidCallback? onClose;
  final List<Widget> items;

  const ModalSelectCourierWidget({
    super.key,
    this.onClose,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerModal(),
          ...items.map(
            (element) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: element,
            ),
          ),
        ],
      ),
    );
  }

  // headerModal
  Row headerModal() {
    return Row(
      children: [
        IconButton(
          onPressed: onClose,
          color: Colors.black,
          icon: const Icon(Icons.close, size: 24),
        ),
        Text(
          "Pilih Kurir",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
