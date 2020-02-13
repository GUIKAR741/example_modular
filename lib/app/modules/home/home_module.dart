import 'package:example/app/modules/home/home_controller.dart';
import 'package:example/app/modules/home/home_page.dart';
import 'package:example/app/modules/home/pages/outra_pagina/outra_pagina_controller.dart';
import 'package:example/app/modules/home/pages/pagina/pagina_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/outra_pagina/outra_pagina_page.dart';
import 'pages/pagina/pagina_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => OutraPaginaController()),
        Bind((i) => PaginaController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/pagina', child: (_, args) => PaginaPage(titulo: args.data,)),
        Router('/outra_pagina', child: (_, args) => OutraPaginaPage(capitulo: args.data,)),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
