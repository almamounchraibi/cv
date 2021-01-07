import 'package:carte_visite/screen/Menuchoices/connaissances.dart';
import 'package:carte_visite/screen/Menuchoices/experiences.dart';
import 'package:carte_visite/screen/Menuchoices/formation.dart';
import 'package:carte_visite/screen/Menuchoices/presentation.dart';
import 'package:flutter/material.dart';
import '../Menuchoices/connaissances.dart';
import '../Menuchoices/formation.dart';
import '../Menuchoices/experiences.dart';
import '../Menuchoices/presentation.dart';
import '../Menuchoices/contact.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:dio/dio.dart';
import 'package:touch_indicator/touch_indicator.dart';

class Menu extends StatelessWidget {
  final imgUrl =
      "https://drive.google.com/file/d/12eZW7iGKitZUSz4E0WUiDYFUEffDmilx/view?usp=sharing";
  var dio = Dio();
  @override
  Widget build(BuildContext context) {
    return TouchIndicator(
      child: Scaffold(
        appBar: AppBar(
            title: Text('Menu'),
            flexibleSpace: Image(
              image: AssetImage('assets/appbar.jpg'),
              fit: BoxFit.cover,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent
            //elevation: 0.0,
            ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/appbar.jpg"),
            fit: BoxFit.cover,
          )),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        "ALMAMOUN",
                        style: TextStyle(
                          fontFamily: ('Jura'),
                          color: Colors.white60,
                          backgroundColor: Colors.transparent,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        "CHRAIBI",
                        style: TextStyle(
                          fontFamily: ('Jura'),
                          color: Colors.white60,
                          backgroundColor: Colors.transparent,
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    /* CircleAvatar(
                      radius: 80.0,
                      backgroundImage: AssetImage('assets/my_picture.jpg'),
                    ),*/
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Card(
                            child: Image.asset('assets/my_picture.jpg',
                                height: 300, fit: BoxFit.fill),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Presentation();
                          }));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF9A7E7E), Color(0xFF9A7E7E)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 340.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "PRESENTATION",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  color: Color(0xFFFFFBF1),
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Formation();
                          }));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF9A7E7E), Color(0xFF9A7E7E)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 340.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "FORMATION",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFFFFBF1),
                                fontSize: 15,
                                fontFamily: 'JosefinSans',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Expro();
                          }));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF9A7E7E), Color(0xFF9A7E7E)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 340.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "EXPERIENCES PROFESSIONNELLES",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  color: Color(0xFFFFFBF1),
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Connaissances();
                          }));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF9A7E7E), Color(0xFF9A7E7E)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 340.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "CONNAISSANCES TECHNIQUES",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFFFFBF1),
                                fontSize: 15,
                                fontFamily: 'JosefinSans',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Contact();
                          }));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF9A7E7E), Color(0xFF9A7E7E)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 340.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "CONTACT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFFFFBF1),
                                fontSize: 15,
                                fontFamily: 'JosefinSans',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: () {
                          UrlLauncher.launch(imgUrl);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF9A7E7E), Color(0xFF9A7E7E)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 340.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "TELECHARGER LE CV SOUS FORMAT PDF",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFFFFBF1),
                                fontSize: 15,
                                fontFamily: 'JosefinSans',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
