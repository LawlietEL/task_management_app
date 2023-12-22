import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(width: 100, child: SideBar()),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            context.width > 600
                ? const Expanded(
                    flex: 2,
                    child: SideBar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  context.width > 600
                      ? const header()
                      : Container(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Expanded(
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Task Management',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.primaryText),
                                    ),
                                    Text(
                                      'Manage your task now and get more fun with friends',
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: AppColors.primaryText),
                                    ),
                                  ],
                                ),
                              ),
                              //const Spacer(),
                              const Icon(
                                Ionicons.notifications,
                                color: AppColors.primaryText,
                                size: 24,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                //ClipRrect untuk menyisipkan gambar
                                borderRadius: BorderRadius.circular(30),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2022/09/17/15/34/muslim-7461232_960_720.png'),
                                ), //borderradius untuk menambahkan wadah bulat tempat foto
                              ),
                            ],
                          ),
                        ),
                  //content atau isi page atau screen
                  Expanded(
                    child: Container(
                      padding: context.width > 600
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(10),
                      margin: context.width > 600
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: context.width > 600
                            ? BorderRadius.circular(20)
                            : BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'My Task',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 25,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 8,
                              clipBehavior: Clip.antiAlias,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            //ClipRrect untuk menyisipkan gambar
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://cdn.pixabay.com/photo/2022/09/17/15/34/muslim-7461232_960_720.png'),
                                            ), //borderradius untuk menambahkan wadah bulat tempat foto
                                          ),
                                          ClipRRect(
                                            //ClipRrect untuk menyisipkan gambar
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://cdn.pixabay.com/photo/2022/09/17/15/34/muslim-7461232_960_720.png'),
                                            ), //borderradius untuk menambahkan wadah bulat tempat foto
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                              child: Text('70 %',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                      //const Spacer(),
                                      const SizedBox(
                                          height:
                                              30), //awalnya pakai spacer, tapi saya ganti dengan sized box,
                                      //karena kalau pakai spacer malah ilang isinya.
                                      Container(
                                        height: 25,
                                        width: 80,
                                        color: AppColors.primaryBg,
                                        child: const Center(
                                          child: Text(
                                            '10 / 10 Task',
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Pemrograman Mobile 1',
                                        style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontSize: 20),
                                      ),
                                      const Text(
                                        'Deadline 2 hari lagi',
                                        style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: const Alignment(0.95, 0.95),
        child: FloatingActionButton.extended(
          onPressed: () {
            Get.bottomSheet(
              Container(
                //margin: EdgeInsets.only(left: 0, right: 0),
                height: Get.height,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white),
              ),
            );
          },
          label: const Text('Add Task'),
          icon: const Icon(Ionicons.add),
        ),
      ),
    );
  }
}
