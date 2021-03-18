import 'package:cat_application/screens/desktop/list_cat_screen.dart';
import 'package:cat_application/screens/mobile/list_cat_screen.dart';
import 'package:cat_application/screens/tablet/list_cat_screen.dart';
import 'package:flutter/material.dart';

class ListCatScreen extends StatefulWidget {
  @override
  _ListCatScreenState createState() => _ListCatScreenState();
}

class _ListCatScreenState extends State<ListCatScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth>1200){
          return ListCatDesktopScreen();
        }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
          return ListCatDesktopScreen();
        }else{
          return ListCatMobileScreen();
        }
      });
  }
}