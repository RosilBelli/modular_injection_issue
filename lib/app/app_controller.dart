import 'package:mobx/mobx.dart';
import 'package:modular_injection_issue/interfaces/i_app_controller.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store implements IAppController {

  _AppControllerBase() {
    print('AppController Instantiated!');
  }


  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }


  Future<bool> initApp() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }


}
