import 'package:flutter/material.dart';

class ChartingPage extends StatefulWidget {
  ChartingPage({Key? key}) : super(key: key);

  @override
  _ChartingPageState createState() => _ChartingPageState();
}

class _ChartingPageState extends State<ChartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Text("Chart")),
    );
  }
}
