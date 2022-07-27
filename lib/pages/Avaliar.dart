import 'dart:html';
import 'package:flutter/material.dart';
import 'package:intl/intl_browser.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/src/widgets/framework.dart';

class Avaliar extends StatefulWidget {
  @override
  _AvaliarState createState() => _AvaliarState();
}

class _AvaliarState extends State<Avaliar> {
  TextEditingController _date = TextEditingController();
  TimeOfDay hora = TimeOfDay(hour: 10, minute: 30);

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avaliação do Atendimento"),
      ),
      body: Container(
          color: Colors.amber,
          padding: EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),
          child: ListView(children: <Widget>[
            SizedBox(
              child: TextField(
                controller: _date,
                decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today_rounded),
                    labelText: "Data do Atendimento"),
                onTap: () async {
                  DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101));

                  if (pickeddate != null) {
                    setState(() {
                      _date.text = DateFormat("yyyy-MM-dd").format(pickeddate);
                    });
                  }
                },
              ),
            ),
            Text(
              '${hora.hour}: ${hora.minute}',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                child: Text('Selecione a hora do atendimento'),
                onPressed: () async {
                  TimeOfDay? newTime =
                      await showTimePicker(context: context, initialTime: hora);
                  if (newTime == null) return;
                  setState(() => hora = newTime);
                }),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  icon: const Icon(Icons.supervised_user_circle_sharp),
                  labelText: "Tipo de Serviço",
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
                  icon: const Icon(Icons.person),
                  labelText: "Nome do Agente",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )),
              style: TextStyle(fontSize: 20),
            ),
            Container(
              child: Column(
                children: [
                  RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.all(8.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 109, 223, 15),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ],
              ),
            ),
            TextFormField(
              minLines: 2,
              maxLines: 5,
              autofocus: true,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  icon: const Icon(Icons.comment),
                  labelText: "Recomendações / Comentário sobre o atendimento",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )),
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 70,
              child: FlatButton(
                color: Color.fromARGB(255, 181, 230, 7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Avaliar",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {},
              ),
            )
          ])),
    );
  }
}
