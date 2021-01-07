import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:touch_indicator/touch_indicator.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TouchIndicator(
      child: Scaffold(
        backgroundColor: Color(0xFF00796B),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Contact'),
          backgroundColor: Colors.transparent,
          flexibleSpace: Image(
            image: AssetImage('assets/appbar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/appbar.jpg"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assets/my_picture.jpg'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    margin: EdgeInsets.only(top: 80.0),
                    color: Colors.white54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.phone),
                          onPressed: () {
                            UrlLauncher.launch("tel:+33767724181");
                          },
                        ),
                        Text(
                          'Numéro de téléphone',
                          style: TextStyle(
                              fontFamily: 'JosefinSans',
                              fontSize: 25.0,
                              height: 1.5,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(top: 50.0),
                    color: Colors.white54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {
                            UrlLauncher.launch(
                                "mailto:<almamoun.chraibi@gmail.com>");
                          },
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                              fontFamily: 'JosefinSans',
                              fontSize: 25.0,
                              height: 1.5,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(top: 50.0),
                    color: Colors.white54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('assets/linkedin.png'),
                          iconSize: 26.0,
                          onPressed: () {
                            UrlLauncher.launch(
                                "https://www.linkedin.com/in/almamoun-chraibi/");
                          },
                        ),
                        Text(
                          'Linkedin',
                          style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 25.0,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*   Card(
                    margin: EdgeInsets.only(top: 30.0),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('assets/instagram.png'),
                          iconSize: 26.0,
                          onPressed: () {
                            UrlLauncher.launch(
                                "https://www.instagram.com/almamounchraibi/");
                          },
                        ),
                        Text(
                          'Instagram',
                          style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 25.0,
                            height: 1.5,
                            color: Color(0xFF9A7E7E),
                          ),
                        ),
                      ],
                    ),
                  ),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
