import 'package:example/app/modules/home/models/capitulo_model.dart';
import 'package:example/app/modules/home/models/titulo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PaginaPage extends StatefulWidget {
  final TituloModel titulo;
  PaginaPage({Key key, @required this.titulo}) : super(key: key);

  @override
  _PaginaPageState createState() => _PaginaPageState();
}

class _PaginaPageState extends State<PaginaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo.nome),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Proxima Outra Pagina"),
            onPressed: () => Modular.to.pushNamed(
              "/outra_pagina",
              arguments: CapituloModel(
                titulo: "Outra Pagina",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
