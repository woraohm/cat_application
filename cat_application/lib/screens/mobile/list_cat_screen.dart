import 'package:cat_application/global.dart';
import 'package:cat_application/screens/api/list_cat_api.dart';
import 'package:cat_application/screens/mobile/detail_cat_screen.dart';
import 'package:flutter/material.dart';
import 'package:rest_package/bean/list_cat_response.dart';

class ListCatMobileScreen extends StatefulWidget {
  @override
  _ListCatMobileScreenState createState() => _ListCatMobileScreenState();
}

class _ListCatMobileScreenState extends State<ListCatMobileScreen> {
  ListCatAPI api = ListCatAPI();

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              width: _width,
              height: _height * 0.5,
              color: Color(0xFFa1b175),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: _height * 0.02,
                      right: _height * 0.02,
                      top: _height * 0.02),
                  width: _width,
                  height: _height * 0.1,
                  child: Text(
                    'The Cat Breeds',
                    style: TextStyle(
                        fontSize: _height * 0.04, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: _height * 0.04),
                  width: _width,
                  height: _height * 0.85,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      )),
                  child: _buildCatList(context),
                ),
              ],
            ),
          ],
        ),
        
      ),
    );
  }

  Widget _buildCatList(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return FutureBuilder<List<ListCatResponse>>(
      future: api.getListCat(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          var data = snapshot.data;
          int lengthData = data.length;
          return GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: _height * 0.02,
            //crossAxisSpacing: _height*0.02,

            children: List.generate(lengthData, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailCatMobileScreen(dataDetail: data[index],)));
                },
                child: Card(
                  elevation: 1,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  margin: EdgeInsets.only(
                      left: _height * 0.02, right: _height * 0.02),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: _height * 0.0025,
                        right: _height * 0.0025,
                        top: _height * 0.0025),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    data[index].image.url,
                                  ),
                                  fit: BoxFit.cover)),
                          width: _width,
                          height: _height * 0.16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: _height * 0.01),
                          alignment: Alignment.topLeft,
                          child: Text(
                            data[index].name,
                            style: TextStyle(
                                fontSize: _height * 0.025,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: _height * 0.01),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'weight imperial ' + data[index].weight.imperial,
                            style: TextStyle(
                                fontSize: _height * 0.024,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600]),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: _height * 0.01),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'weight metric ' + data[index].weight.metric,
                                style: TextStyle(
                                    fontSize: _height * 0.024,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[600]),
                              ),
                            ),
                            // Container(
                            //   width: _width*0.1,
                            //   height: _height*0.03,
                            //   child: Image.network('https://cdn.pixabay.com/photo/2015/12/09/15/32/footprint-1084899_960_720.png'))
                          ],
                        ),
                      ],
                    ),
                    //margrin: EdgeInsets.only(left: 10, right: 10),
                  ),
                ),
              );
            }),
          );
        }
      },
    );
  }
}
