import 'package:modular_injection_issue/app/modules/settings/settings_module.dart';
import 'package:modular_injection_issue/app/share/app_repository.dart';
import 'package:modular_injection_issue/app/share/http_services.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:modular_injection_issue/app/app_widget.dart';
import 'package:modular_injection_issue/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HttpService()),
        Bind((i) => AppRepository()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/settings', module: SettingsModule()),
      ];

  @override
  Widget get bootstrap {
    print('App Module Bootstrap!');
    // return AppWidget();

    final appController = Modular.get<AppController>();
    return FutureBuilder<bool>(
        future: appController.initApp(),
        builder: (context, snapshot) {
          print('Bootstrap FutureBuilder | snapshot data: ${snapshot.data}');
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(
              child: CircularProgressIndicator(),
            );
          else
            return AppWidget();
        });
  }

  static Inject get to => Inject<AppModule>.of();
}
