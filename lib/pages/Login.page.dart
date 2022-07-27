import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Cadastro.page.dart';
import 'package:flutter_application_1/pages/Principal.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool _verSenha = true;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.amber,
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      //color: Colors.white,
      child: ListView(
        children: <Widget>[
          SizedBox(
            width: 128,
            height: 128,
            child: Image.asset("assets/TMCEL.jpg"),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: const Icon(Icons.person),
                labelText: "Utilizador ou email",
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
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: _verSenha,
            decoration: InputDecoration(
              icon: const Icon(Icons.password),
              labelText: "Senha",
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _verSenha = !_verSenha;
                  });
                },
                child:
                    Icon(_verSenha ? Icons.visibility_off : Icons.visibility),
              ),
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20),
          ),
          Container(
            height: 40,
            alignment: Alignment.centerRight,
            child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {}),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color.fromARGB(255, 161, 147, 19),
                      Color.fromARGB(15, 2, 114, 45),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  )),
              child: SizedBox.expand(
                child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "LOGIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Principal()))
                        }),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: FlatButton(
              child: Text(
                "Cadastre-se",
                textAlign: TextAlign.center,
              ),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CadastroPage()))
              },
            ),
          )
        ],
      ),
    ));
  }
}
