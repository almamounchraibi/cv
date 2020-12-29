import 'package:flutter/material.dart';
import 'details.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff052555),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ma présentation'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/my_picture.jpg'),
              ),
              SizedBox(height: 10.0),
              Card(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Almamoun CHRAIBI',
                    style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 30.0,
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
                    "Ingénieur informatique et étudiant en Marketing Digital à l'INSEEC Paris",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'JosefinSans',
                        color: Colors.white,
                        fontSize: 20.0,
                        height: 1.5),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Details();
                  }));
                },
                child: Text(
                  'Consulter le profil',
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    color: Colors.white70,
                  ),
                ),
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
