import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_injection_issue/interfaces/i_app_controller.dart';
import 'package:modular_injection_issue/interfaces/i_http_service.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  var v1 = Modular.get<IAppController>();
  var v2 = Modular.get<IHttpService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), actions: [
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () => Modular.to.pushNamed('/settings'),
        ),
      ]),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
