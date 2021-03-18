import 'package:flutter/material.dart';

class ListCatDesktopScreen extends StatefulWidget {
  @override
  _ListCatDesktopScreenState createState() => _ListCatDesktopScreenState();
}

class _ListCatDesktopScreenState extends State<ListCatDesktopScreen> {
  
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
  
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text('Not Support, please call back \n064-334-8302',
        style: TextStyle(fontSize: _height*0.04, ),),),
 
      ),
      
    );
  }
}