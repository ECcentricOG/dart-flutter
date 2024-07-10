import 'package:getx_state_management/data/network/network_api_services.dart';
import 'package:getx_state_management/models/user.dart';

class LoginRepository {
  final _api = NetworkApiServices();

  Future<User> getUserLogin(var body) async {
    String url = "http://localhost:8080/login";
    final json = await _api.postApi(url, body);
    return User.fromJson(json);
  }
}
