import 'package:cat_application/global.dart';
import 'package:flutter/material.dart';
import 'package:rest_package/bean/list_cat_response.dart';

class DetailCatMobileScreen extends StatefulWidget {
  ListCatResponse dataDetail;
  DetailCatMobileScreen({this.dataDetail});

  @override
  _DetailCatMobileScreenState createState() =>
      _DetailCatMobileScreenState(dataDetail: dataDetail);
}

class _DetailCatMobileScreenState extends State<DetailCatMobileScreen> {
  ListCatResponse dataDetail;

  _DetailCatMobileScreenState({this.dataDetail});

  CallWidget callWidget = CallWidget();

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: _height * 0.0045,
                    right: _height * 0.0045,
                    top: _height * 0.0045),
                child: _buildImageCat(context),
              ),
              SizedBox(
                height: _height * 0.01,
              ),
              _buildNameBreed(context),
              _buildOriginCat(context),
              SizedBox(
                height: _height * 0.02,
              ),
              _buildDescriptionCat(context),
              //powerBarBuild(3,Colors.red),
              SizedBox(
                height: _height * 0.02,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: _height * 0.03, right: _height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Intelligence',
                      style: TextStyle(fontSize: _height * 0.025),
                    ),
                  
                    SizedBox(width: _height*0.01,),
                      _buildDataIntelligence(context),
                  ],
                ),
              ),
              SizedBox(height: _height*0.02,),
              Padding(
                padding:
                    EdgeInsets.only(left: _height * 0.03, right: _height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'social needs',
                      style: TextStyle(fontSize: _height * 0.025),
                    ),
                    SizedBox(width: _height*0.01,),
                      _buildDataSocialNeeds(context),
                  ],
                ),
              ),
            
              SizedBox(
                height: _height * 0.1,
              ),
              _buildButtonSaveFav(context)
            ],
          ),
        ),
      
    );
  }

  Widget _buildImageCat(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.red,
      width: _width,
      height: _height * 0.4,
      child: Stack(
        children: [
          Container(
              height: _height * 0.4,
              width: _width,
              child: Image.network(
                dataDetail.image.url,
                fit: BoxFit.cover,
              )),
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }

  Widget _buildNameBreed(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(left: _height * 0.03, right: _height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            dataDetail.name,
            style: TextStyle(fontSize: _height * 0.03),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red,
          )
        ],
      ),
    );
  }

  Widget _buildOriginCat(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: _height * 0.02, right: _height * 0.02),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: Color(0xFFa1b175),
          ),
          Text(
            dataDetail.origin,
            style:
                TextStyle(fontSize: _height * 0.024, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionCat(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: _height * 0.03, right: _height * 0.02),
      child: Container(
        width: _width,
        height: _height * 0.2,
        decoration: BoxDecoration(border: Border.all(color: Color(0xFFa1b175))),
        child: ListView(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(left: _height * 0.01, right: _height * 0.01),
              child: Text(
                '   ' + dataDetail.description,
                style: TextStyle(
                    fontSize: _height * 0.023, color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonSaveFav(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: _height * 0.02, right: _height * 0.02),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Coming soon...."),
                actions: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Card(
                      elevation: 5,
                      color: Color(0xFFa1b175),
                      child: Container(
                        padding: EdgeInsets.only(
                            left: _height * 0.01, right: _height * 0.01),
                        child: Text(
                          'ตกลง',
                          style: TextStyle(
                              fontSize: _height * 0.03, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
        child: Card(
          color: Color(0xFFa1b175),
          elevation: 5,
          child: Container(
            alignment: Alignment.center,
            width: _width,
            height: _height * 0.07,
            child: Text(
              'Save to Favourite',
              style: TextStyle(fontSize: _height * 0.03, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDataIntelligence(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: _height * 0.02, right: _height * 0.02),
      child: Container(
        
        height: _height * 0.04,
        width: _width*0.5,
        child: callWidget.buildPowerBar(dataDetail.intelligence, context),
      ),
    );
  }

  Widget _buildDataSocialNeeds(BuildContext context){
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: _height * 0.02, right: _height * 0.02),
      child: Container(
        
        height: _height * 0.04,
        width: _width*0.5,
        child: callWidget.buildPowerBar(dataDetail.social_needs, context),
      ),
    );
  }

  


}
