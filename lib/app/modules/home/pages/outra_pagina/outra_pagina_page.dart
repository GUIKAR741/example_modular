import 'package:example/app/modules/home/models/capitulo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OutraPaginaPage extends StatefulWidget {
  final CapituloModel capitulo;
  OutraPaginaPage({Key key, @required this.capitulo}) : super(key: key);

  @override
  _OutraPaginaPageState createState() => _OutraPaginaPageState();
}

class _OutraPaginaPageState extends State<OutraPaginaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.capitulo.titulo),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Voltar para Outra Pagina"),
            onPressed: () => Modular.to.pop(),
          ),
        ),
      ),
    );
  }
}
