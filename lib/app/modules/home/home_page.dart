import 'package:example/app/modules/home/models/titulo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Proxima Pagina"),
            onPressed: () => Modular.to.pushNamed(
              "/pagina",
              arguments: TituloModel(
                nome: "Pagina",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
