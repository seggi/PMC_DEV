import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pmc_dev/screens/individuals/charting/chart_page.dart';
import 'package:pmc_dev/screens/individuals/contacts/contact_page.dart';
import 'package:pmc_dev/screens/individuals/dashboard/dashboard_page.dart';
import 'package:pmc_dev/screens/individuals/notifications/notification_page.dart';
import 'package:pmc_dev/screens/individuals/products/products_page.dart';

class StartPage extends StatefulWidget {
  StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int index = 2;
  final screens = [
    NotificationPage(),
    DashBoardPage(),
    ProductsPage(),
    ChartingPage(),
    ContactPage()
  ];
  final items = <Widget>[
    Icon(
      Icons.home_outlined,
      size: 30,
      color: Colors.white30,
    ),
    Icon(
      Icons.dashboard_outlined,
      size: 30,
      color: Colors.white30,
    ),
    Icon(
      Icons.shopping_cart,
      size: 30,
      color: Colors.white30,
    ),
    Icon(
      Icons.chat_rounded,
      size: 30,
      color: Colors.white30,
    ),
    Icon(
      Icons.account_circle_outlined,
      size: 30,
      color: Colors.white30,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white30,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBody: true,
            body: screens[index],
            bottomNavigationBar: Theme(
              data: Theme.of(context)
                  .copyWith(iconTheme: IconThemeData(color: Colors.white)),
              child: CurvedNavigationBar(
                color: Colors.black54,
                backgroundColor: Colors.transparent,
                buttonBackgroundColor: Colors.black54,
                animationCurve: Curves.easeInOut,
                animationDuration: Duration(microseconds: 600),
                height: 60,
                index: index,
                items: items,
                onTap: (index) => setState(() => this.index = index),
              ),
            )),
      ),
    );
  }
}
