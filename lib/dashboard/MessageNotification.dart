import 'package:flutter/material.dart';

class MessageNotification extends StatelessWidget {
  final VoidCallback onReplay;
  final Text title;
  final Text subTitle;
  final Icon icon;
  final Color color;
  final GlobalKey OverlyKey;
  const MessageNotification({Key key, this.onReplay, this.title, this.subTitle, this.icon, this.color = Colors.redAccent, this.OverlyKey}) : super(key: OverlyKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: OverlyKey,
      height: 120.0,
      child: Card(
        color: color,
        elevation: 0.0,
        margin: const EdgeInsets.symmetric(horizontal: 0),
        child: SafeArea(
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListTile(
                title: title,
                subtitle: subTitle,
                trailing: IconButton(
                    icon: icon,
                    onPressed: () {
                      if (onReplay != null) onReplay();
                    }),
              )),
        ),
      ),
    );
  }
}

