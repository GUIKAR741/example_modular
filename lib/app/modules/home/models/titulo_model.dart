import 'package:mobx/mobx.dart';
part 'titulo_model.g.dart';

class TituloModel extends _TituloModelBase with _$TituloModel {
  TituloModel({String nome}) : super(nome: nome);

  factory TituloModel.fromJson(Map<String, dynamic> json) {
    return TituloModel(nome: json['nome']);
  }

  Map<String, dynamic> toJson() => {
        'nome': this.nome,
      };
}

abstract class _TituloModelBase with Store {
  @observable
  String nome;

  _TituloModelBase({this.nome});
}
