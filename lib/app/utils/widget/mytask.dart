import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class MyTask extends StatelessWidget {
  const MyTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.cardBg,
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        //ClipRrect untuk menyisipkan gambar
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2022/09/17/15/34/muslim-7461232_960_720.png'),
                        ), //borderradius untuk menambahkan wadah bulat tempat foto
                      ),
                      ClipRRect(
                        //ClipRrect untuk menyisipkan gambar
                        borderRadius: BorderRadius.circular(25),
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
                                color: AppColors.primaryText,
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
                    )),
                  ),
                  const Text(
                    'Pemrograman Mobile 1',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  const Text(
                    'Deadline 2 hari lagi',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.cardBg,
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        //ClipRrect untuk menyisipkan gambar
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2022/09/17/15/34/muslim-7461232_960_720.png'),
                        ), //borderradius untuk menambahkan wadah bulat tempat foto
                      ),
                      ClipRRect(
                        //ClipRrect untuk menyisipkan gambar
                        borderRadius: BorderRadius.circular(25),
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
                          child: Text('85 %',
                              style: TextStyle(
                                color: AppColors.primaryText,
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
                    )),
                  ),
                  const Text(
                    'Pemrograman WEB 2',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  const Text(
                    'Deadline 7 hari lagi',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.cardBg,
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        //ClipRrect untuk menyisipkan gambar
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2022/09/17/15/34/muslim-7461232_960_720.png'),
                        ), //borderradius untuk menambahkan wadah bulat tempat foto
                      ),
                      ClipRRect(
                        //ClipRrect untuk menyisipkan gambar
                        borderRadius: BorderRadius.circular(25),
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
                          child: Text('90 %',
                              style: TextStyle(
                                color: AppColors.primaryText,
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
                    )),
                  ),
                  const Text(
                    'RPL',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  const Text(
                    'Deadline 3 hari lagi',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.cardBg,
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        //ClipRrect untuk menyisipkan gambar
                        borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          foregroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2022/09/17/15/34/muslim-7461232_960_720.png'),
                        ), //borderradius untuk menambahkan wadah bulat tempat foto
                      ),
                      ClipRRect(
                        //ClipRrect untuk menyisipkan gambar
                        borderRadius: BorderRadius.circular(25),
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
                          child: Text('98 %',
                              style: TextStyle(
                                color: AppColors.primaryText,
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
                    )),
                  ),
                  const Text(
                    'Basis Data 2',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  const Text(
                    'Hari ini',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
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
