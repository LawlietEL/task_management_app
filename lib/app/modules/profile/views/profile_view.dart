import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management_app/app/data/controller/auth_controller.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/mytask.dart';
import 'package:task_management_app/app/utils/widget/profile.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authC = Get.find<AuthController>();

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
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Get.defaultDialog(
                                    title: 'Sign Out',
                                    content:
                                        const Text('Sign out your account? '),
                                    cancel: ElevatedButton(
                                      onPressed: () => Get.back(),
                                      child: const Text('Cancel'),
                                    ),
                                    confirm: ElevatedButton(
                                      onPressed: () => authC.logout(),
                                      child: const Text(
                                        'Sign Out',
                                      ),
                                    ),
                                  );
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      'Sign Out',
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.logout_outlined,
                                      color: AppColors.primaryText,
                                      size: 25,
                                    ),
                                  ],
                                ),
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
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Profile(),
                          Text(
                            'My Task',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 200,
                            child: MyTask(),
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
    );
  }
}
