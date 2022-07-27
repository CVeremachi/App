import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Avaliar.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Avaliação do Atendimento"),
        ),
        body: Container(
            color: Color.fromARGB(255, 233, 218, 7),
            padding: EdgeInsets.only(
              top: 60,
              left: 40,
              right: 40,
            ),
            child: ListView(children: <Widget>[
              SizedBox(
                height: 80,
                child: Text(
                  "Bem-vindo a avaliação do Atendimento da TMcel!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/www.png",
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: 100,
                child: Text(
                  "A Sua Opinião é extremamente importante para nós.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 70,
                child: FlatButton(
                  color: Color.fromARGB(255, 181, 230, 7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Text(
                    "Iniciar a Avaliação",
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Avaliar()))
                  },
                ),
              )
            ])));
  }
}
