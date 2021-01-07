import 'package:flutter/material.dart';
import 'package:touch_indicator/touch_indicator.dart';

class Connaissances extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TouchIndicator(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: Image(
            image: AssetImage('assets/appbar.jpg'),
            fit: BoxFit.cover,
          ),
          title: Text(
            'Mes connaissances techniques',
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
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
                  /* CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/studies.png'),
                  ), */
                  Card(
                    color: Colors.white70,
                    margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Certificats et connaissances techniques',
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 25.0,
                          height: 1.5,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Certificats : \n - 2020 : Certification Google Ads pour la publicité sur le Réseau de Recherche. \n - 2018 : Windows Server Administration Fundamentals. \n - 2017 : Database Fundamentals. \n - 2016 : Internet and Computing Core Certification (IC3).",
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 20.0,
                            height: 1.5,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Connaissances techniques : \n - C/C++/C# : Programme d'implémentation d'une calculatrice scientifique, résolution du Sudoku avec la notion de Backtracking, programme de gestion de fichiers pour un S.E. \n - Android : Développement d'une application de gestion d'agence de nettoyage, d'une application de gestion de Tontines. \n - Flutter : Création d'un CV présenté sous forme d'application, création d'une carte de visite. \n - ERP : ODOO et SAP (Connaissances basiques). \n - Java/JEE : (Spring-Struts-Angular) Développements d'un site e-commerce ainsi que d'une application pour la gestion des ESTDs (génération de jeux de test). \n - SQL : Réalisation de plusieurs bases de données. \n",
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
