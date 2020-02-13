import 'package:example/app/modules/home/models/titulo_model.dart';
import 'package:example/app/modules/home/pages/pagina/pagina_page.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('PaginaPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
      buildTestableWidget(
        PaginaPage(
          titulo: TituloModel(
            nome: 'Pagina',
          ),
        ),
      ),
    );
    final titleFinder = find.text('Pagina');
    expect(titleFinder, findsOneWidget);
  });
}
