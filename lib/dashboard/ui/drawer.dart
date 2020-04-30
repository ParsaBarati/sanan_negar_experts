
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.0,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: FlatButton.icon(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF015FFF),
                  size: 20.0,
                ),
                onPressed: null,
                label: Text("بازگشت",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11.0,
                        color: Colors.black)),
                color: Colors.black,
              ),
            ),
            buildMenuItem(Icons.account_balance, "داشبورد",
                opacity: 1.0, color: Color(0xFF015FFF)),
            Divider(),
            buildMenuItem(Icons.compare_arrows, "درخواست ها"),
            Divider(),
            buildMenuItem(Icons.receipt, "گزارشات"),
            Divider(),
            buildMenuItem(Icons.attach_money, "پرداختی ها"),
            Divider(),
            buildMenuItem(Icons.sentiment_satisfied, "مشتری ها"),
            Divider(),
            buildMenuItem(Icons.phone, "پشتیبانی"),
            Divider()
          ],
        ),
      ),
    );
  }

  Opacity buildMenuItem(IconData icon, String title,
      {double opacity = 0.3, Color color = Colors.black}) {
    return Opacity(
      opacity: opacity,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Icon(
              icon,
              size: 50.0,
              color: color,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(title,
                style: TextStyle(
                  fontFamily: 'IRANSans',
                    fontWeight: FontWeight.w500, fontSize: 14.0, color: color)),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}