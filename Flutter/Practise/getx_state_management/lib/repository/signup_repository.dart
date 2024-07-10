import 'package:getx_state_management/data/network/network_api_services.dart';
import 'package:getx_state_management/models/user.dart';

class SignUpRepository {
  final _api = NetworkApiServices();

  Future<User> registerUser(var body) async {
    final json = await _api.postApi("http://localhost:8080/register", body);
    return User.fromJson(json);
  }
}
