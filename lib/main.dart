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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('images/dice$numeroDado.png'),
        Row(
          children: [
            FloatingActionButton(
              onPressed: () => cambiarDado(1),
              child: Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black,
            ),
            FloatingActionButton(
              onPressed: () => cambiarDado(2),
              child: Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black,
            ),
            FloatingActionButton(
              onPressed: () => cambiarDado(3),
              child: Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ],
    );
  }

  cambiarDado(int numero) {
    print("El numero apretado es: $numero");
    numeroDado = numero;
    setState(() {});
  }
}
