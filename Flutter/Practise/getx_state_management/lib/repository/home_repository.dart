import 'package:getx_state_management/data/network/network_api_services.dart';
import 'package:getx_state_management/models/post.dart';
import 'package:getx_state_management/models/user.dart';

class HomeRepository {
  final _api = NetworkApiServices();

  Future<List> getPosts() async {
    List json = await _api.getApi("http://localhost:8080/posts");
    return json;
  }

  Future<User> getPostUser(int id) async {
    final json = await _api.getApi("http://localhost:8080/user/$id");
    return User.fromJson(json);
  }

  Future<Post> updatePost(var body) async {
    final json = await _api.putApi("http://localhost:8080/post/update", body);
    return Post.fromJson(json);
  }
}
