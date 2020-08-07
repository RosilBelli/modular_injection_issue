import 'package:modular_injection_issue/interfaces/i_app_repository.dart';

class AppRepository implements IAppRepository {

  AppRepository() {
    print('AppRepository Instantiated!');
  }

  @override
  Future<bool> init() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }


}