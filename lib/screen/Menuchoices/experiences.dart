import 'package:flutter/material.dart';
import 'package:touch_indicator/touch_indicator.dart';

class Expro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TouchIndicator(
      child: Scaffold(
        appBar: AppBar(
            title: Text('Mes expériences'),
            flexibleSpace: Image(
              image: AssetImage('assets/appbar.jpg'),
              fit: BoxFit.cover,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent),
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
                  /*CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/experience.png'),
                  ),*/
                  Card(
                    color: Colors.white70,
                    margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Expériences professionnelles',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 25.0,
                            height: 1.5,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "- 2018-2019 : Stage de six mois dans l'entreprise Sopra Banking Software \n Sujet : Conception et développement en Angular / Spring d'une application qui génère des jeux de test (montants). \n \n - 2017-2018 : Stage de deux mois dans l'entreprise Visual Soft. \n Sujet : Conception et développement en JEE(natif), d'une application pour l'Office de Développement et de la Coopération. \n \n - 2016-2017 : Stage d'un mois dans l'entreprise Medasys. \n Sujet : Développement d'un site web pour la gestion des conférences (HTML5/PHP). \n \n - 2015-2020 : Fondateur d'un magasin en ligne \"World's Best Shop\"",
                        style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 20.0,
                            height: 1.5,
                            color: Colors.white),
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
