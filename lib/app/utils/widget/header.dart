import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Task Management',
                  style: TextStyle(fontSize: 20, color: AppColors.primaryText),
                ),
                Text(
                  'Manage your task now and get more fun with friends',
                  style: TextStyle(fontSize: 15, color: AppColors.primaryText),
                )
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.only(left: 40, right: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: 'Search'),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Ionicons.notifications,
              color: AppColors.primaryText,
              size: 24,
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  title: 'Sign Out',
                  content: const Text('Sign out your account? '),
                  cancel: ElevatedButton(
                    onPressed: () => Get.back(),
                    child: const Text('Cancel'),
                  ),
                  confirm: ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.LOGIN),
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
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
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
    );
  }
}
