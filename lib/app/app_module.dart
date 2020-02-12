import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:loginmobx/app/app_controller.dart';
import 'package:loginmobx/app/app_widget.dart';
import 'package:loginmobx/app/pages/home/home_controller.dart';

import 'package:loginmobx/app/pages/shared/respositories/poke_repository.dart';
import 'package:loginmobx/app/pages/shared/utils/constants.dart';

import 'pages/home/home_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get<PokeRepository>())),
        Bind((i) => PokeRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE)))
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
