import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estil = TextStyle(fontSize: 24);
  int _contador = 0;
  
  _ContadorPageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador amb Stateful"),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nombre de clicks: ", style: _estil,),
            Text("$_contador", style: _estil,)
          ]
        )
      ),
      floatingActionButton: _crearBotons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _crearBotons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(width: 30),
          FloatingActionButton(
            onPressed: () {
              _cero();
            },
            child: Icon(Icons.exposure_zero)
          ),
          Expanded(child: SizedBox()),
          FloatingActionButton(
            onPressed: () {
              _restar();
            },
            child: Icon(Icons.remove)
          ),
          SizedBox(width: 5),
          FloatingActionButton(
            onPressed: () {
              _sumar();
            },
            child: Icon(Icons.add)
          )
        ]
      );
  }

  void _sumar() {
    setState(() {
      _contador++;
    });
  }

  void _restar() {
    setState(() {
      _contador--;
    });
  }

  void _cero() {
    setState(() {
      _contador = 0;
    });
  }
}