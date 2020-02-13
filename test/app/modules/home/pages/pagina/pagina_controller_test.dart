import 'package:example/app/modules/home/home_module.dart';
import 'package:example/app/modules/home/pages/pagina/pagina_controller.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(HomeModule());
  PaginaController pagina;

  setUp(() {
    pagina = HomeModule.to.get<PaginaController>();
  });

  group('PaginaController Test', () {
    test("First Test", () {
      expect(pagina, isInstanceOf<PaginaController>());
    });

    test("Set Value", () {
      expect(pagina.value, equals(0));
      pagina.increment();
      expect(pagina.value, equals(1));
    });
  });
}
