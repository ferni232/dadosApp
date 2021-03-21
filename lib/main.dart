import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dados'),
            backgroundColor: Colors.red,
          ),
          body: PaginaDados()),
    ),
  );
}

class PaginaDados extends StatefulWidget {
  @override
  _PaginaDadosState createState() => _PaginaDadosState();
}

class _PaginaDadosState extends State<PaginaDados> {
  int numeroDado = 1;
  int numeroDado2 = 2;
  int jugador1 = 0;
  int jugador2 = 0;
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'el jugador 1 tiene $jugador1 puntos',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'el jugador 2 tiene $jugador2 puntos',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'images/dice$numeroDado.png',
              width: 200,
              height: 200,
            ),
            Image.asset(
              'images/dice$numeroDado2.png',
              width: 200,
              height: 200,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              onPressed: () => cambiarDado(),
              // ButtonStyle(backgroundColor: Colors.red,),
              //child: Text(
              //'apreta para tirar los dados',
              //style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }

  cambiarDado() {
    //print("El numero apretado es: ");
    numeroDado = Random().nextInt(6) + 1;
    numeroDado2 = Random().nextInt(6) + 1;
    //print("El numero 1 apretado es:$numeroDado ");
    //print("El numero apretado es: $numeroDado2");
    i++;
    if (i % 2 == 0) {
      jugador1 = jugador1 + numeroDado + numeroDado2;
    } else {
      jugador2 = jugador2 + numeroDado + numeroDado2;
    }

    setState(() {});
  }
}
