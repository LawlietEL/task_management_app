import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'My Friends',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 25,
                  ),
                ),
                const Spacer(), //video ke 7 mulai dari sini
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.FRIENDS),
                  child: const Text(
                    'More',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Icon(
                  Ionicons.chevron_forward,
                  color: AppColors.primaryText,
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 200,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: context.width < 600 ? 2 : 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          //ClipRrect untuk menyisipkan gambar
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2022/09/17/15/34/muslim-7461232_960_720.png'),
                          ), //borderradius untuk menambahkan wadah bulat tempat foto
                        ),
                      ),
                      const Text(
                        'Takumi',
                        style: TextStyle(color: AppColors.primaryText),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
