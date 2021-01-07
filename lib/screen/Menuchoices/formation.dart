import 'package:flutter/material.dart';
import 'package:touch_indicator/touch_indicator.dart';

class Formation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TouchIndicator(
      child: Scaffold(
        appBar: AppBar(
            title: Text('Mes formations'),
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
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /*         CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/studies.png'),
                  ),*/
                  SizedBox(height: 10.0),
                  Card(
                    color: Colors.white70,
                    margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Etudes supérieures \n',
                                  style: TextStyle(
                                    fontFamily: 'JosefinSans',
                                    fontSize: 25.0,
                                    height: 1.5,
                                    color: Colors.black,
                                  )),
                              TextSpan(
                                  text: '2014 - 2021',
                                  style: TextStyle(
                                    fontFamily: 'JosefinSans',
                                    fontSize: 25.0,
                                    height: 1.5,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "- Master 2 en marketing digital et e-business à l'INSEEC de Paris (2020-2021) \n \n - Diplôme en ingénierie informatique et réseaux option MIAGE à l'Ecole Marocaine des Sciences de l'Ingénieur (2014-2019) \n \n - Baccalauréat Sciences de la Vie et de la Terre, mention Assez Bien, au Lycée Moulay Youssef, Rabat (2013)",
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'JosefinSans',
                            color: Colors.white,
                            fontSize: 20.0,
                            height: 1.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
