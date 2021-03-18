import 'package:flutter/material.dart';

const backgroundColor = Color(0xFFecebeb);

class CallWidget {
  buildPowerBar(int score, BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    print("score " + score.toString());
    switch (score) {
      case 1:
        return Container(
          decoration: BoxDecoration(
              color: Colors.grey[350], borderRadius: BorderRadius.circular(12)),
          width: _width * 0.1,
          height: _height,
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFa1b175),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
                width: _width * 0.08,
                height: _height,
                
              )
            ],
          ),
        );
        break;
      case 2:
        return Container(
          decoration: BoxDecoration(
              color: Colors.grey[350], borderRadius: BorderRadius.circular(12)),
          width: _width * 0.1,
          height: _height,
          
          child: Row(
            children: <Widget>[
              Container(
                 decoration: BoxDecoration(
                  color: Color(0xFFa1b175),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
                width: _width * 0.08,
                height: _height,
                
              ),
              SizedBox(
                width: _height * 0.01,
              ),
              Container(
                width: _width * 0.08,
                height: _height,
                color: Color(0xFFa1b175),
              ),
            ],
          ),
        );
        break;
      case 3:
        return Container(
          decoration: BoxDecoration(
              color: Colors.grey[350], borderRadius: BorderRadius.circular(12)),
          width: _width * 0.1,
          height: _height,
      
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFa1b175),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
                width: _width * 0.08,
                height: _height,
                
              ),
              SizedBox(
                width: _height * 0.01,
              ),
              Container(
                width: _width * 0.08,
                height: _height,
                color: Color(0xFFa1b175),
              ),
              SizedBox(
                width: _height * 0.01,
              ),
              Container(
                width: _width * 0.08,
                height: _height,
                color: Color(0xFFa1b175),
              ),
            ],
          ),
        );
        break;
      case 4:
        return Container(
          decoration: BoxDecoration(
              color: Colors.grey[350], borderRadius: BorderRadius.circular(12)),
          width: _width * 0.1,
          height: _height,
      
          child: Row(
            
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFa1b175),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
                width: _width * 0.08,
                height: _height,
           
              ),
              SizedBox(
                width: _height * 0.01,
              ),
              Container(
                width: _width * 0.08,
                height: _height,
                color: Color(0xFFa1b175),
              ),
              SizedBox(
                width: _height * 0.01,
              ),
              Container(
                width: _width * 0.08,
                height: _height,
                color: Color(0xFFa1b175),
              ),
              SizedBox(
                width: _height * 0.01,
              ),
              Container(
                width: _width * 0.08,
                height: _height,
                color: Color(0xFFa1b175),
              ),
            ],
          ),
        );
        break;
      case 5:
        return Container(
          decoration: BoxDecoration(
              color: Colors.grey[350], borderRadius: BorderRadius.circular(12)),
          width: _width * 0.1,
          height: _height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFFa1b175),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
                width: _width * 0.08,
                height: _height,
              ),
              SizedBox(
                width: _height * 0.01,
              ),
              Container(
                width: _width * 0.08,
                height: _height,
                color: Color(0xFFa1b175),
              ),
              SizedBox(
                width: _height * 0.01,
              ),
              Container(
                width: _width * 0.08,
                height: _height,
                color: Color(0xFFa1b175),
              ),
              SizedBox(
                width: _height * 0.01,
              ),
              Container(
                width: _width * 0.08,
                height: _height,
                color: Color(0xFFa1b175),
              ),
              SizedBox(
                width: _height * 0.01,
              ),
              Container(
                width: _width * 0.08,
                height: _height,
                decoration: BoxDecoration(
                    color: Color(0xFFa1b175),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
              ),
            ],
          ),
        );
        break;
      default:
    }
  }

  Widget buildAppBar(BuildContext context, String name) {
    final double _height = MediaQuery.of(context).size.height;
    return AppBar(
      centerTitle: true,
      title: Text(
        name,
        style: TextStyle(fontSize: _height * 0.03),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
