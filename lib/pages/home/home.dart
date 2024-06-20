import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kinclong/pages/home/models/service.dart';
import 'package:kinclong/pages/home/widgets/current_order_container.dart';
import 'package:kinclong/pages/home/widgets/order_item.dart';
import 'package:kinclong/pages/home/widgets/swipper.dart';
import 'package:kinclong/pages/request_pickup/request_pickup.dart';
import 'package:kinclong/utils/navigate.dart';

import 'widgets/notification_icon.dart';
import 'widgets/service_container.dart';
import 'widgets/title_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  // onTapMoreIcon
  void onTapMoreIcon() {
    debugPrint("onTapMoreIcon");
  }

  // onTapNotificationIcon
  void onTapNotificationIcon() {
    debugPrint("onTapNotificationIcon");
  }

  // onTapShowAllOrder
  void onTapShowAllOrder() {
    debugPrint("onTapShowAllOrder");
  }

  // onSelectService
  void onSelectService(ServiceModel v, BuildContext context) {
    // move page by service name
    switch (v.serviceName) {
      case "Pickup":
        // rootNavigator =? can back with prev page
        NavigateUtil.navigateWithRootPage(
          context,
          MaterialPageRoute(
            builder: (context) => RequestPickupPage(idService: v.id),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: NotificationWidget(
          data: "11",
          onTap: onTapNotificationIcon,
        ),
        actions: [
          _iconActionMore(onTapMoreIcon),
        ],
        title: const TitleAppBarWidget(username: "Yoyok FC"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            const SwipperWidget(),
            const Gap(5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: ServiceContainerWidget(onSelectService: onSelectService),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: CurrentOrderContainer(
                countCurrentOrder: 3,
                onShowAllOrder: onTapShowAllOrder,
                children: const [
                  OrderItemWidget(),
                  Gap(7),
                  OrderItemWidget(),
                  Gap(7),
                  OrderItemWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // _iconActionMore
  Padding _iconActionMore(VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 20.0),
      child: IconButton(
        onPressed: onTap,
        icon: const Icon(Icons.more_vert),
      ),
    );
  }
}
