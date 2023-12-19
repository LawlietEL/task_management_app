import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: context.width > 600
          ? const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 100,
                      foregroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2022/09/17/15/34/muslim-7461232_960_720.png'),
                    ),
                  ),
                ),
                // SizedBox(width: 40,),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Politek Takumi',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'politekniktakumi@gmail.com',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : const Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 65,
                      foregroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2022/09/17/15/34/muslim-7461232_960_720.png'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Politek Takumi',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'politekniktakumi@gmail.com',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
