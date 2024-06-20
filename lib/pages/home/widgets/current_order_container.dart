import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentOrderContainer extends StatefulWidget {
  // variable
  final VoidCallback? onShowAllOrder;
  final int countCurrentOrder;
  final List<Widget> children;

  const CurrentOrderContainer({
    super.key,
    this.onShowAllOrder,
    this.countCurrentOrder = 0,
    required this.children,
  });

  @override
  State<CurrentOrderContainer> createState() {
    return _stateCurrentOrderContainer();
  }
}

// _stateCurrentOrderContainerWidget
// ignore: camel_case_types
class _stateCurrentOrderContainer extends State<CurrentOrderContainer> {
  // _HeaderCurrentOrder
  Row _HeaderCurrentOrder(int? orderCount, VoidCallback onShowAllOrder) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Pesanan Berlangsung ($orderCount)',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        TextButton(
          onPressed: onShowAllOrder,
          child: Text(
            "Tampilkan Semua",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _HeaderCurrentOrder(
          widget.countCurrentOrder,
          widget.onShowAllOrder!,
        ),
        SizedBox(
          height: 300,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: widget.children,
          ),
        ),
      ],
    );
  }
}
