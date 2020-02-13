import 'package:example/app/modules/home/home_module.dart';
import 'package:example/app/modules/home/pages/outra_pagina/outra_pagina_controller.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(HomeModule());
  OutraPaginaController outrapagina;

  setUp(() {
    outrapagina = HomeModule.to.get<OutraPaginaController>();
  });

  group('OutraPaginaController Test', () {
    test("First Test", () {
      expect(outrapagina, isInstanceOf<OutraPaginaController>());
    });

    test("Set Value", () {
      expect(outrapagina.value, equals(0));
      outrapagina.increment();
      expect(outrapagina.value, equals(1));
    });
  });
}
