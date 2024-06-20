import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegulerAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback onBack;

  const RegulerAppbarWidget({super.key, required this.onBack});

  Padding _title() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Text(
        "Request Pickup",
        style: GoogleFonts.plusJakartaSans(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  Padding _leading(VoidCallback onBack) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: IconButton(
        onPressed: () => onBack(),
        color: Colors.black,
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: _title(),
      leading: _leading(onBack),
    );
  }

  @override
  // implement preferredSize from PreferredSizeWidget
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
