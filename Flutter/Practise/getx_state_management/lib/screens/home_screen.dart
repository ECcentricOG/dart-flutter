import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/home_controller.dart';

import 'package:getx_state_management/resources/functions/like_function.dart';
import 'package:getx_state_management/resources/routes/route_name.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    homeController.getAllPosts();
  }

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Obx(
          () => IconButton(
            splashRadius: 10,
            icon: homeController.isLightMode.value
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode),
            onPressed: () {
              homeController.changeMode();
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(RouteName.profileScreen,
                    arguments: {"user": homeController.user});
              },
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  "${homeController.user.userProfilePic}",
                ),
              ),
            ),
          ),
        ],
      ),
      body: Obx(
        () {
          return ListView.builder(
            itemCount: homeController.allPosts.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "${homeController.allPosts[index].userImg}",
                          ),
                          maxRadius: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "${homeController.allPosts[index].userName}",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star_border,
                            color: Colors.yellow.shade700,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AspectRatio(
                      aspectRatio: 4 / 5,
                      child: Image.network(
                        "${homeController.allPosts[index].postUrl}",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (!homeController.allPosts[index].likedUsers!
                                  .contains(homeController.user.userName)) {
                                homeController.allPosts[index].likedUsers!
                                    .add("${homeController.user.userName}");
                              } else {
                                homeController.allPosts[index].likedUsers!
                                    .remove("${homeController.user.userName}");
                              }
                              homeController.updatePost(
                                  homeController.allPosts[index], index);
                              homeController.allPosts.refresh();
                            },
                            icon: likeFun(homeController
                                .allPosts[index].likedUsers!
                                .contains(homeController.user.userName)),
                          ),
                          Text(
                            "${homeController.allPosts[index].likedUsers!.length}",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                              "${homeController.allPosts[index].postComments!.length}"),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.filter_list_sharp,
                              color: Colors.green,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SizedBox(
                        width: Get.width / 0.9,
                        child: Text(
                          homeController.allPosts[index].postDescription
                              .toString(),
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     homeController.addImage();
      //   },
      // ),
    );
  }
}
