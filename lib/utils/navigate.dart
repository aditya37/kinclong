import 'package:flutter/material.dart';

class NavigateUtil {
  // const Duration(milliseconds: 350) ==> default
  static void navigateDelay(
    BuildContext context,
    Duration duration,
    MaterialPageRoute materialPageRoute,
  ) async {
    await Future.delayed(duration);
    if (context.mounted) {
      Navigator.of(context).push(materialPageRoute);
      return;
    }
    return;
  }

  // navigateWithPreviousPage
  // move page with previous page
  // is root page
  static void navigateWithRootPage(
    BuildContext context,
    MaterialPageRoute materialPageRoute,
  ) {
    Navigator.of(context, rootNavigator: true).push(materialPageRoute);
  }

  // close modal
  static void onBack(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}
