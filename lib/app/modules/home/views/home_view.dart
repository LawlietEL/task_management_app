import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myfriends.dart';
import 'package:task_management_app/app/utils/widget/mytask.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';
import 'package:task_management_app/app/utils/widget/upcomingtask.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(
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
                            Expanded(
                              child: const Column(
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
                        //isi My Task
                        const MyTask(),
                        context.width > 600
                            ? const Expanded(
                                child: SingleChildScrollView(
                                  child: Row(
                                    children: [
                                      UpcomingTask(),
                                      MyFriends(),
                                    ],
                                  ),
                                ),
                              )
                            : const UpcomingTask(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
