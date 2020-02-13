import 'package:mobx/mobx.dart';

part 'pagina_controller.g.dart';

class PaginaController = _PaginaBase with _$PaginaController;

abstract class _PaginaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
