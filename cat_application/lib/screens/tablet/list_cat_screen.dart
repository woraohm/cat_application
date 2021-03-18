import 'package:cat_application/global.dart';
import 'package:flutter/material.dart';

class ListCatTabletScreen extends StatefulWidget {
  @override
  _ListCatTabletScreenState createState() => _ListCatTabletScreenState();
}

class _ListCatTabletScreenState extends State<ListCatTabletScreen> {
  CallWidget callWidget = CallWidget();
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: callWidget.buildAppBar(context, 'รายชื่อแมว'),

      ),
      
    );
  }
}