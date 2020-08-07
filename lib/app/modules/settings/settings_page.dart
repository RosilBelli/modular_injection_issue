import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_injection_issue/app/share/http_services.dart';
import 'package:modular_injection_issue/interfaces/i_app_controller.dart';
import 'package:modular_injection_issue/interfaces/i_app_repository.dart';
import 'package:modular_injection_issue/interfaces/i_http_service.dart';
import 'settings_controller.dart';

class SettingsPage extends StatefulWidget {
  final String title;
  const SettingsPage({Key key, this.title = "Settings"}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState
    extends ModularState<SettingsPage, SettingsController> {
  var v1 = Modular.get<IAppController>();
  var v2 = Modular.get<IHttpService>();
  var v3 = Modular.get<IAppRepository>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Container(child: Text(v2.someInstanceData, style: TextStyle(fontSize: 20),),)),
    );
  }
}
