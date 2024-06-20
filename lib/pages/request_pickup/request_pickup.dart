import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinclong/pages/request_pickup/widgets/card_pickup_address.dart';
import 'package:kinclong/pages/request_pickup/widgets/card_pickup_courier.dart';
import 'package:kinclong/pages/request_pickup/widgets/item_modal_select_courier.dart';
import 'package:kinclong/utils/navigate.dart';
import 'package:kinclong/widgets/button.dart';
import 'package:kinclong/widgets/reguler_app_bar.dart';

import 'widgets/card_pickup_summary.dart';
import 'widgets/courier_item.dart';
import 'widgets/modal_select_courier.dart';

class RequestPickupPage extends StatefulWidget {
  final int? idService;

  const RequestPickupPage({super.key, this.idService = 0});

  @override
  State<RequestPickupPage> createState() {
    return _RequestPickupState();
  }
}

class _RequestPickupState extends State<RequestPickupPage> {
  // for only test
  String pickupNote = "-";

  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  // onBack
  void onBack(BuildContext ctx) {
    Navigator.of(ctx).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RegulerAppbarWidget(onBack: () => onBack(context)),
      backgroundColor: const Color(0xffF0F3FA),
      bottomSheet: BottomSheet(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: ListView(
          children: [
            const CardPickupAddressWidget(),
            const Gap(5),
            CardPickupCourierWidget(
              onGetMoreCourier: onGetMoreCourier,
              child: const [
                CourierItemWidget(
                  courierName: "JNE",
                  startPrice: "13.000",
                  endPrice: "17.000",
                  estimateTime: "13.00 - 16.00",
                ),
                CourierItemWidget(
                  courierName: "JNE",
                  startPrice: "13.000",
                  endPrice: "17.000",
                  estimateTime: "13.00 - 16.00",
                ),
              ],
            ),
            const Gap(5),
            CardPickupNote(
              (v) => {
                setState(() {
                  pickupNote = v;
                })
              },
            ),
            const Gap(4),
            CardPickupSummaryWidget(
              endPrice: "13.000",
              startPrice: "14.000",
              courierName: "JNE",
              pickupTime: "13.00",
              pickupNote: pickupNote,
            ),
          ],
        ),
      ),
    );
  }

  // onGetMoreCourier
  void onGetMoreCourier() async {
    await showModalBottomSheet(
      showDragHandle: false,
      isDismissible: false,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      builder: (context) {
        return ModalSelectCourierWidget(
          onClose: () => NavigateUtil.onBack(context),
          items: const [
            ItemModalGetCourierWidget(),
            ItemModalGetCourierWidget(),
            ItemModalGetCourierWidget(),
          ],
        );
      },
    );
  }

  // CardPickupNote
  Container CardPickupNote(Function(String) onSubmitted) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(left: 9, top: 7, bottom: 11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(6),
            Text(
              "Pesan Untuk Kurir (Optional)",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(onSubmitted: (value) => onSubmitted(value)),
          ],
        ),
      ),
    );
  }

  // BottomSheet
  Padding BottomSheet() {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Container(
        color: Colors.white,
        height: 56,
        child: Align(
          alignment: Alignment.center,
          child: ButtonWidget(
            width: 186,
            onPressed: () => {},
            buttonTitle: "Lengkapi Pesanan",
          ),
        ),
      ),
    );
  }
}
