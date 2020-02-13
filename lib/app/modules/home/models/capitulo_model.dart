import 'package:mobx/mobx.dart';
part 'capitulo_model.g.dart';

class CapituloModel extends _CapituloModelBase with _$CapituloModel {
  CapituloModel({String titulo}) : super(titulo: titulo);

  factory CapituloModel.fromJson(Map<String, dynamic> json) {
    return CapituloModel(titulo: json['titulo']);
  }

  Map<String, dynamic> toJson() => {
        'titulo': this.titulo,
      };
}

abstract class _CapituloModelBase with Store {
  @observable
  String titulo;

  _CapituloModelBase({this.titulo});
}
