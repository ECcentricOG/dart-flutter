import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/data/response/status.dart';
import 'package:getx_state_management/models/post.dart';
import 'package:getx_state_management/models/user.dart';
import 'package:getx_state_management/repository/home_repository.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  RxBool isLightMode = true.obs;
  RxString imagePath = ''.obs;
  RxList<Post> allPosts = List<Post>.empty().obs;
  final requestStatus = Status.loading.obs;
  final _postsApi = HomeRepository();
  User user = Get.arguments['user'];

  changeMode() {
    if (isLightMode.value) {
      Get.changeTheme(ThemeData.dark());
      isLightMode.value = false;
    } else {
      Get.changeTheme(ThemeData.light());
      isLightMode.value = true;
    }
  }

  Future addImage() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imagePath.value = image.path;
    }
  }

  getAllPosts() async {
    await _postsApi.getPosts().then(
      (list) {
        for (var element in list) {
          Post post = Post.fromJson(element);
          allPosts.add(post);
        }
        requestStatus.value = Status.completed;
      },
    ).onError(
      (error, stackTrace) {
        requestStatus.value = Status.error;
      },
    );
  }

  updatePost(Post post, int index) async {
    await _postsApi.updatePost(post.toJson()).then(
      (value) {
        allPosts[index].updatePost(post);
        requestStatus.value = Status.completed;
      },
    ).onError((error, stackTrace) {
      requestStatus.value = Status.error;
    });
  }
}
