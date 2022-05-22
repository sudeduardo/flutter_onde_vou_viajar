import 'package:flutter/material.dart';
import 'package:onde_vou_viajar/pais.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Para onde vou viajar?'),
          backgroundColor: Colors.blue,
        ),
        body: Home(),
      ),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Pais pais = Pais("", "");
  Paises paises = Paises();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  pais = paises.getPaisRandom();
                });
              },
              child: Image.asset(pais.getPath()),
            ),
          ),
          Text(pais.name,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  _HomeState() {
    pais = paises.getPaisRandom();
  }
}
