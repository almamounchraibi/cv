import 'package:flutter/material.dart';
import 'package:touch_indicator/touch_indicator.dart';

class Presentation extends StatelessWidget {
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
            'Présentation',
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
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3.0),
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
                  Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Je m'appelle Almamoun Chraibi, Ingénieur Informatique et Réseaux option MIAGE. Captivé par les nouvelles technologies et le marketing digital, j'ai décidé de poursuivre mes études en M2 Marketing Digital et E-Business. \n \nAprès avoir fini mon cursus ingénieur au Maroc, j’ai décidé d’élargir mes connaissances et de toucher au côté digital pour en apprendre plus sur les moteurs de recherche, l’analyse des données ainsi que les pratiques liées aux supports et canaux web. \n\nEn parallèle avec mes études, je suis passionné par le football, la pêche et les jeux vidéo.  Je joue chaque semaine au minimum un match de football pour maintenir une activité sportive régulière, rencontrer de nouvelles personnes et travailler mon esprit d’équipe; la pêche m'aide à travailler ma patience et mon attention et les jeux vidéos m'aident à être plus réactif et améliorent ma capacité de prise de décisions dans les plus brefs délais.",
                        // textAlign: TextAlign.center,
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
