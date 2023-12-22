import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/data/controller/auth_controller.dart';
import 'package:task_management_app/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    //print(context.width) => untuk cek lebar halaman.
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: context.isPhone
            ? EdgeInsets.all(Get.width * 0.03)
            : EdgeInsets.all(Get.width * 0.05),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Row(children: [
          //biru
          context.width > 600
              ? //apakah layar yang sekarang digunakan kurang dari 600px
              //kalau kurang dari 600px, gunakan ini ke bawah
              Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      color: Colors.blue,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 70,
                            ),
                          ),
                          Text(
                            "Please Sign In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Start Jourey With Us",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
          //ptutih
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: const Radius.circular(50),
                  bottomRight: const Radius.circular(50),
                  topLeft: context.isPhone
                      ? const Radius.circular(50)
                      : const Radius.circular(0),
                  bottomLeft: context.isPhone
                      ? const Radius.circular(50)
                      : const Radius.circular(0),
                ),
                color: Colors.white,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    context.width < 600
                        ? const Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 40,
                                ),
                              ),
                              Text(
                                "Please Sign In",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Start Jourey With Us",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          )
                        : const SizedBox(),
                    Image.asset(
                      'assets/images/login.png',
                      height: Get.height * 0.5,
                    ),
                    FloatingActionButton.extended(
                      onPressed: () => authC.signInWithGoogle(),
                      label: const Text('Sign In With Google'),
                      icon: const Icon(
                        Ionicons.logo_google,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
