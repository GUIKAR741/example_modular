import 'package:mobx/mobx.dart';

part 'outra_pagina_controller.g.dart';

class OutraPaginaController = _OutraPaginaBase with _$OutraPaginaController;

abstract class _OutraPaginaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
