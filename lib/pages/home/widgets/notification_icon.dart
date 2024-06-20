import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  final String data;
  final VoidCallback onTap;

  const NotificationWidget({super.key, this.data = "", required this.onTap});

  @override
  State<NotificationWidget> createState() {
    return _NotificationWidgetWidgetState();
  }
}

class _NotificationWidgetWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.8),
      child: Center(
        child: IconButton(
          onPressed: widget.onTap,
          icon: widget.data.isNotEmpty
              ? Badge(
                  label: textData(widget.data),
                  child: const Icon(CupertinoIcons.bell),
                )
              : const Icon(CupertinoIcons.bell),
        ),
      ),
    );
  }

  Container textData(String data) {
    return Container(alignment: Alignment.center, child: Text(data));
  }
}
