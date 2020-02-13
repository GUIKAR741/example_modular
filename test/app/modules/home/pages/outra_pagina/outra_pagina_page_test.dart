import 'package:example/app/modules/home/models/capitulo_model.dart';
import 'package:example/app/modules/home/pages/outra_pagina/outra_pagina_page.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('OutraPaginaPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
      buildTestableWidget(
        OutraPaginaPage(
          capitulo: CapituloModel(
            titulo: "OutraPagina",
          ),
        ),
      ),
    );
    final titleFinder = find.text('OutraPagina');
    expect(titleFinder, findsOneWidget);
  });
}
