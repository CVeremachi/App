import 'dart:html';
import 'package:flutter_application_1/pages/Login.page.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.amber,
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      child: ListView(
        children: <Widget>[
          SizedBox(
            child: Text(
              "CADASTRO",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Schyler',
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                fontSize: 40,
              ),
            ),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                icon: const Icon(Icons.person),
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                icon: const Icon(Icons.person),
                labelText: "Sobrenome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.streetAddress,
            decoration: InputDecoration(
                icon: const Icon(Icons.location_city),
                labelText: "Morada",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                icon: const Icon(Icons.location_city_rounded),
                labelText: "Nacionalidade",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: const Icon(Icons.email),
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                icon: const Icon(Icons.phone),
                labelText: "Numero de telefone",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                icon: const Icon(Icons.password),
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                icon: const Icon(Icons.password_outlined),
                labelText: "Confirmar Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: FlatButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Text(
                "Cadastrar",
                textAlign: TextAlign.center,
              ),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()))
              },
            ),
          )
        ],
      ),
    ));
  }
}
