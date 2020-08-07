import 'package:modular_injection_issue/interfaces/i_http_service.dart';
import 'package:random_string/random_string.dart';

class HttpService implements IHttpService {
  String someInstanceData = randomString(10);

  @override
  HttpService() {
    print('HttpService Instantiated!');
    print('HttpService someInstanceData: $someInstanceData');
  }
   
  Future<bool> getAnything() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }


}